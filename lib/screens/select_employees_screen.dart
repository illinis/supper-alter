import 'package:flutter/material.dart';
import 'package:supper_app/utils/strings.dart';

import 'package:supper_app/widgets/widgets.dart';

class SelectEmployeesScreen extends StatefulWidget {
  const SelectEmployeesScreen({Key? key}) : super(key: key);

  @override
  State<SelectEmployeesScreen> createState() => _SelectEmployeesScreenState();
}

class _SelectEmployeesScreenState extends State<SelectEmployeesScreen> {
  final _formKey = GlobalKey<FormState>();

  List<bool> switchStates = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Apontamento prod."),
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SwitchListTile(
                          title: Text(
                            "Funcionários presentes",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          subtitle: const Text("Selecionar todos"),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          visualDensity: const VisualDensity(
                            horizontal: 0,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          activeColor: Theme.of(context).colorScheme.secondary,
                          value: switchStates.every((element) => element),
                          onChanged: (value) => setState(() {
                            switchStates.fillRange(
                              0,
                              switchStates.length,
                              value,
                            );
                          }),
                        ),
                        Divider(
                          indent: 10,
                          endIndent: 10,
                          height: 10,
                          thickness: 0.75,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        for (int i = 0; i < switchStates.length; i++)
                          SwitchListTile(
                            title: Text(
                              "Alexandre Pereira".toCapitalized(
                                  capitalization: TextCapitalization.words),
                              style: switchStates[i] ? const TextStyle(fontWeight: FontWeight.w700) : null,
                            ),
                            subtitle: const Text("Cartão: 00246"),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            activeColor: Theme.of(context).colorScheme.secondary,
                            selected: switchStates[i],
                            selectedTileColor: Theme.of(context)
                                .colorScheme
                                .surfaceVariant,
                                // .withAlpha(75),
                            value: switchStates[i],
                            onChanged: (value) => setState(() {
                              switchStates[i] = value;
                            }),
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
                      Navigator.of(context).pushNamed('/indicate-production');
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
