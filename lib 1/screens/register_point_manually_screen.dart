import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/widgets/widgets.dart';
import 'package:supper_app/utils/strings.dart';

class RegisterPointManuallyScreen extends StatefulWidget {
  final LatLng? startPosition;
  final LatLng? endPosition;
  final String order;
  final bool extraordinary;
  final bool emergency;
  final bool hideAppBar;

  const RegisterPointManuallyScreen({
    Key? key,
    this.startPosition,
    this.endPosition,
    required this.order,
    this.extraordinary = false,
    this.emergency = false,
    this.hideAppBar = false,
  }) : super(key: key);

  @override
  State<RegisterPointManuallyScreen> createState() =>
      _RegisterPointManuallyScreenState();
}

class _RegisterPointManuallyScreenState
    extends State<RegisterPointManuallyScreen> {
  static const List<Contingency> contingencies = [
    Contingency(id: 7, description: "Falha na leitura do crachá"),
    Contingency(id: 8, description: "Esqueceu crachá"),
    Contingency(id: 9, description: "Outros"),
  ];

  final _formKey = GlobalKey<FormState>();
  final _registrationController = TextEditingController();

  Employee? _employee;
  int? _contingencyId;

  // List used to show the employees that had an registered point on this page instance
  final List<Employee> _lastPoints = [];

  bool _isLoading = false;

  String getTitle() {
    if (widget.extraordinary) return "Ponto Extraordinário";
    if (widget.emergency) return "Ponto Emergencial";
    return "Ponto Manual";
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

  void findEmployee() {
    _employee = context
        .read<EmployeeProvider>()
        .getSingleEmployee(_registrationController.text);
    if (_employee != null) {
      setState(() {});
    }
  }

  Future<void> registerPoint() async {
    if (_employee != null && _formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      RegisteredPointProvider registeredPointProvider =
          context.read<RegisteredPointProvider>();

      dynamic result = await registeredPointProvider.insertRegisteredPoint(
        RegisteredPoint(
            employeeId: _employee?.id ?? 0,
            schedule: DateTime.now(),
            order: widget.order,
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
        // Need to limit this to only 1 occurrence somehow
        bool journeySaved = context.read<JourneyProvider>().getIsJourneySaved();
        if (!journeySaved && !widget.extraordinary && !widget.emergency) {
          await context
              .read<JourneyProvider>()
              .setNewJourney(widget.order == "I" ? "started" : "finished");
        }
      }

      if (result is bool && result && await Vibration.hasVibrator() == true) {
        Vibration.vibrate(duration: 200);
      }

      setState(() => _isLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _registrationController.addListener(findEmployee);
  }

  @override
  void dispose() {
    _registrationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !widget.hideAppBar ? CustomAppBar(title: getTitle()) : null,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contingência",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomTextField(
                            controller: _registrationController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            labelText: "Matrícula",
                            hintText: "00246",
                            prefixIcon: const Icon(Icons.person),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Entre uma matrícula válida';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomDropdown(
                            labelText: "Motivo",
                            hintText: "Selecione um motivo",
                            prefixIcon: const Icon(Icons.short_text),
                            value: _contingencyId,
                            options: contingencies.map((e) => e.id).toList(),
                            getLabel: (int value) => contingencies
                                .firstWhere((element) => element.id == value)
                                .description,
                            onChanged: (int? newValue) {
                              if (newValue != _contingencyId) {
                                setState(() => _contingencyId = newValue);
                              }
                            },
                            validator: (int? value) {
                              if (value == null || value.isNaN) {
                                return 'Selecione um motivo';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
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
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          padding: const EdgeInsets.all(10),
                          children: [
                            Text(
                              "Nome: ${_employee?.name.toCapitalized() ?? ''}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: CustomButton(
                    widget: _isLoading
                        ? const SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          )
                        : null,
                    text: "Registrar ponto",
                    onPressed: registerPoint,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPointManuallyScreenArguments {
  final LatLng? startPosition;
  final LatLng? endPosition;
  final String order;
  final bool extraordinary;
  final bool emergency;
  final bool hideAppBar;

  const RegisterPointManuallyScreenArguments({
    Key? key,
    this.startPosition,
    this.endPosition,
    required this.order,
    this.extraordinary = false,
    this.emergency = false,
    this.hideAppBar = false,
  });
}
