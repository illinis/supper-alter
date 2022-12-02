import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';

import 'package:supper_app/widgets/widgets.dart';

class SelectServiceItemScreen extends StatefulWidget {
  const SelectServiceItemScreen({Key? key}) : super(key: key);

  @override
  State<SelectServiceItemScreen> createState() =>
      _SelectServiceItemScreenState();
}

class _SelectServiceItemScreenState extends State<SelectServiceItemScreen> {
  // late final ServiceItemProvider serviceItemProvider;
  // final List<ServiceItem> = serviceItemProvider 
  
  final _formKey = GlobalKey<FormState>();

  final _dateController = TextEditingController(
    text: DateFormat("dd/MM/yyyy").format(DateTime.now()),
  );
  final _codeController = TextEditingController(text: "17147");
  final _nameController = TextEditingController(
      text: "SUBST DORM MADEIRA => MADEIRA LARGA CONFINADA");
  final _measureController = TextEditingController(text: "12");
  String? _type;
  double? _value;

  @override
  void dispose() {
    _dateController.dispose();
    _codeController.dispose();
    _nameController.dispose();
    _measureController.dispose();
    super.dispose();
  }

  static const List<String> _kOptions = <String>[
    'aba',
    'beta',
    'ceta',
    'deta',
    'eta',
    'kappa'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Serviço realizado",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomTextField(
                            controller: _dateController,
                            labelText: "Data",
                            hintText: "dd/mm/yyyy",
                            prefixIcon: const Icon(Icons.today),
                            onTap: () async {
                              FocusScope.of(context).requestFocus(FocusNode());
                              DateTime? date = await showDatePicker(
                                context: context,
                                locale: const Locale("pt", "BR"),
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now().subtract(
                                  const Duration(days: 365),
                                ),
                                lastDate: DateTime.now().add(
                                  const Duration(days: 365),
                                ),
                              );

                              if (date != null) {
                                _dateController.text =
                                    DateFormat('dd/MM/yyyy').format(date);
                              }
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Selecione uma data';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomTextField(
                            controller: _codeController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            labelText: "Código",
                            hintText: "00246",
                            prefixIcon: const Icon(Icons.numbers),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Entre um código válido';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Autocomplete<String>(
                            optionsBuilder:
                                (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return _kOptions.where((String option) {
                                return option.contains(
                                    textEditingValue.text.toLowerCase());
                              });
                            },
                            fieldViewBuilder: ((context, textEditingController,
                                    focusNode, onFieldSubmitted) =>
                                CustomTextField(
                                  controller: textEditingController,
                                  textInputAction: TextInputAction.next,
                                  labelText: "Descrição",
                                  hintText: "Lorem ipsum",
                                  prefixIcon: const Icon(Icons.notes),
                                  maxLines: 3,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Entre um código válido';
                                    }
                                    return null;
                                  },
                                )),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomTextField(
                            controller: _measureController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            labelText: "Medição total",
                            hintText: "12",
                            prefixIcon: const Icon(Icons.bar_chart),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Entre um código válido';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Dados do serviço",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        FilledCard(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(10),
                          children: [
                            Text(
                              "Tipo: ${_type ?? ''}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              "Pontuação: ${_value?.toString() ?? ''}",
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
                    text: "Prosseguir",
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) return;
                      Navigator.of(context).pushNamed('/select-employees');
                    },
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
