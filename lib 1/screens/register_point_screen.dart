import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:vibration/vibration.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/widgets/widgets.dart';
import 'package:supper_app/screens/screens.dart';
import 'package:supper_app/utils/strings.dart';

class RegisterPointScreen extends StatefulWidget {
  final LatLng? startPosition;
  final LatLng? endPosition;
  final String order;
  final bool extraordinary;
  final bool emergency;
  final bool hideAppBar;

  const RegisterPointScreen({
    Key? key,
    this.startPosition,
    this.endPosition,
    required this.order,
    this.extraordinary = false,
    this.emergency = false,
    this.hideAppBar = false,
  }) : super(key: key);

  @override
  State<RegisterPointScreen> createState() => _RegisterPointScreenState();
}

class _RegisterPointScreenState extends State<RegisterPointScreen> {
  late final JourneyProvider journeyProvider;
  final MobileScannerController _cameraController =
      MobileScannerController(formats: [BarcodeFormat.qrCode]);

  Employee? _employee;
  late String order;

  // List used to show the employees that had an registered point on this page instance
  final List<Employee> _lastPoints = [];

  // Variable used to block qrcode reading before the modal is closed
  bool modalOpened = true;

  void setPointOrder(String parentOrder) {
    if (parentOrder == "I" || parentOrder == "O") {
      setState(() {
        order = parentOrder;
        modalOpened = false;
      });
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            insetPadding: const EdgeInsets.all(30),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(
                    "Como deseja registrar o ponto?",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Iniciar jornada",
                    onPressed: () => Navigator.of(context).pop('I'),
                  ),
                  const Divider(),
                  CustomButton(
                    text: "Finalizar jornada",
                    onPressed: () => Navigator.of(context).pop('O'),
                  ),
                  const Divider(),
                  CustomButton(
                    text: "Cancelar",
                    onPressed: () => Navigator.of(context).pop('cancel'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ).then((value) {
      if (value == 'cancel') {
        Navigator.of(context).maybePop();
        return;
      }
      setState(() {
        order = value;
        modalOpened = false;
      });
    });
  }

  void showLastPoints() {
    if (_lastPoints.isNotEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            insetPadding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 50,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          "Úlitmos pontos registrados:",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          child: const Icon(
                            Icons.close,
                            size: 24,
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  ..._lastPoints
                      .map((e) => Text(
                            e.name.toCapitalized(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ))
                      .toList(),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  Future<void> registerPoint(String? cardNumber) async {
    if (cardNumber == null) {
      return;
    }

    _employee = context
        .read<EmployeeProvider>()
        .getEmployees()
        .firstWhereOrNull((element) => element.cardNumber == cardNumber);

    if (_employee != null) {
      // Call set state to show the employee data in the card
      setState(() {});

      RegisteredPointProvider registeredPointProvider =
          context.read<RegisteredPointProvider>();

      dynamic result = await registeredPointProvider.insertRegisteredPoint(
        RegisteredPoint(
            employeeId: _employee?.id ?? 0,
            schedule: DateTime.now(),
            order: order,
            latitude: widget.endPosition?.latitude ?? 0,
            longitude: widget.endPosition?.longitude ?? 0,
            distance: Geolocator.distanceBetween(
              widget.startPosition?.latitude ?? 0,
              widget.startPosition?.longitude ?? 0,
              widget.endPosition?.latitude ?? 0,
              widget.endPosition?.longitude ?? 0,
            ),
            emergency: widget.emergency),
      );
      if (mounted) {
        if (result is String) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(result, style: const TextStyle(fontSize: 18)),
            ),
          );
          return;
        }

        bool journeySaved = journeyProvider.getIsJourneySaved();
        if (!journeySaved && !widget.extraordinary && !widget.emergency) {
          // Save the datetime of the first registered point to validate
          // if the user can start or finish journey in the home_screen
          await journeyProvider
              .setNewJourney(widget.order == "I" ? "started" : "finished");
        }
      }

      if (result is bool && result && await Vibration.hasVibrator() == true) {
        _lastPoints.add(_employee!);
        Vibration.vibrate(duration: 200);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    journeyProvider = context.read<JourneyProvider>();
    Future.microtask(() => setPointOrder(widget.order));
  }

  @override
  void dispose() {
    _cameraController.dispose();
    journeyProvider.setIsJourneySaved(false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !widget.hideAppBar
          ? const CustomAppBar(title: "Registrar ponto")
          : null,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Leitor de QR Code",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: MobileScanner(
                            fit: BoxFit.cover,
                            allowDuplicates: false,
                            controller: _cameraController,
                            onDetect: (qrcode, args) {
                              if (qrcode.rawValue == null || modalOpened) {
                                debugPrint('Failed to scan Barcode');
                              } else {
                                registerPoint(qrcode.rawValue);
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Dados do funcionário",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(width: 5),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: showLastPoints,
                          icon: const Icon(Icons.notifications_outlined),
                        ),
                      ],
                    ),
                    FilledCard(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      children: [
                        Text(
                          "Nome: ${_employee?.name.toCapitalized() ?? ''}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "Matrícula: ${_employee?.cardNumber ?? ''}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: CustomButton(
                  text: "Registrar ponto manual",
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/register-point-manually',
                      arguments: RegisterPointManuallyScreenArguments(
                        order: widget.order,
                        extraordinary: widget.extraordinary,
                        emergency: widget.emergency,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RegisterPointScreenArguments {
  final LatLng? startPosition;
  final LatLng? endPosition;
  final String order;
  final bool extraordinary;
  final bool emergency;

  RegisterPointScreenArguments({
    this.startPosition,
    this.endPosition,
    required this.order,
    this.extraordinary = false,
    this.emergency = false,
  });
}
