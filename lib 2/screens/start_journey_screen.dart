import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:supper_app/screens/screens.dart';
import 'package:supper_app/widgets/widgets.dart';

class StartJourneyScreen extends StatefulWidget {
  final Function notifyParent;

  const StartJourneyScreen({Key? key, required this.notifyParent})
      : super(key: key);

  @override
  State<StartJourneyScreen> createState() => _StartJourneyScreenState();
}

class _StartJourneyScreenState extends State<StartJourneyScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final List<Marker> _markers = <Marker>[];
  late LatLng _initialPosition;
  StreamSubscription<Position>? _positionStream;

  bool _loading = true;
  String? _error;

  Future<void> setPosition() async {
    // Test if location services are enabled.
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _error = 'Os serviços de localização estão desativados';
        _loading = false;
      });
      return;
    }

    // Check if the location permission is available
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.always &&
          permission != LocationPermission.whileInUse) {
        setState(() {
          _error = 'As permissões de localização foram negadas';
          _loading = false;
        });
        return;
      }
    }

    // Set the initial position for the camera
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
      _markers.add(Marker(
        markerId: const MarkerId('1'),
        position: _initialPosition,
      ));
      _loading = false;
    });

    // Set a stream to track and update the user location on the map
    _positionStream = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 100,
      ),
    ).listen((Position? position) async {
      if (position != null) {
        (await _controller.future).animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 17,
            ),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    setPosition();
  }

  @override
  void dispose() {
    _positionStream?.cancel();
    _controller.future.then((value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          children: [
            if (!_loading && _error == null)
              GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                scrollGesturesEnabled: false,
                tiltGesturesEnabled: false,
                buildingsEnabled: false,
                mapToolbarEnabled: false,
                liteModeEnabled: true,
                markers: Set<Marker>.of(_markers),
                onMapCreated: (controller) {
                  _controller.complete(controller);
                },
                initialCameraPosition: CameraPosition(
                  target: _initialPosition,
                  zoom: 17,
                ),
              ),
            if (!_loading && _error != null)
              Center(
                child: Text(_error ?? 'Ocorreu um erro ao carregar o mapa'),
              ),
            if (_loading)
              Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: CustomButton(
                text: 'Registrar ponto',
                onPressed: () async {
                  Position position = await Geolocator.getCurrentPosition();

                  if (mounted) {
                    Navigator.of(context)
                        .pushNamed(
                          '/register-point',
                          arguments: RegisterPointScreenArguments(
                            order: "I",
                            startPosition: _initialPosition,
                            endPosition: LatLng(
                              position.latitude,
                              position.longitude,
                            ),
                          ),
                        )
                        .then((value) => widget.notifyParent());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
