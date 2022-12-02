import 'package:flutter/material.dart';

import 'package:supper_app/widgets/widgets.dart';

class IndicateProductionScreen extends StatefulWidget {
  const IndicateProductionScreen({Key? key}) : super(key: key);

  @override
  State<IndicateProductionScreen> createState() =>
      _IndicateProductionScreenState();
}

class _IndicateProductionScreenState extends State<IndicateProductionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();

  final List<Map<String, dynamic>> _data = List.generate(
    5,
    (_) => ({
      "name": "Alexandre Pereira",
      "position": "Tarefeiro",
      "partial": 30,
      "isExpanded": false,
    }),
  );

  void editProduction() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          insetPadding: const EdgeInsets.all(30),
          content: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListBody(
                children: [
                  Text(
                    "Alterar produção",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 5),
                    child: CustomTextField(
                      controller: _quantityController,
                      labelText: "Quantidade",
                      hintText: "0.0",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    child: CustomTextField(
                      controller: _quantityController,
                      labelText: "Função",
                      hintText: "Tarefeiro",
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Cancelar",
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          text: "Alterar",
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle openedTileTextStyle = TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.w700);

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
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                          child: HeaderCard(
                            total: 12,
                            distributed: 12,
                          ),
                        ),
                        Divider(
                          indent: 10,
                          endIndent: 10,
                          height: 10,
                          thickness: 0.75,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        for (var item in _data)
                          CustomExpansionTile(
                            titleText: item["name"],
                            subtitleText:
                                "${item["position"]}/${item["partial"]} pts",
                            action: IconButton(
                              onPressed: editProduction,
                              icon: const Icon(Icons.edit),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Multip.\n1.0",
                                      style: openedTileTextStyle,
                                    ),
                                    Text(
                                      "Valor\n5.0",
                                      style: openedTileTextStyle,
                                    ),
                                    Text(
                                      "Qtde.\n6.0",
                                      style: openedTileTextStyle,
                                    ),
                                    Text(
                                      "Parcial\n30.0",
                                      style: openedTileTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
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
                    text: "Registrar",
                    onPressed: () {},
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

class HeaderCard extends StatelessWidget {
  final double total;
  final double distributed;

  const HeaderCard({
    Key? key,
    required this.total,
    required this.distributed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final measureStyle = Theme.of(context).textTheme.bodyLarge;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SUBST DORM MADEIRA => MADEIRA LARGA CONFINADA",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            style: measureStyle,
            children: [
              const TextSpan(text: "Medição total: "),
              TextSpan(
                text: total.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: measureStyle,
            children: [
              const TextSpan(text: "Medição distribuída: "),
              TextSpan(
                text: total.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text("Medição", style: measureStyle),
        //           RichText(
        //             text: TextSpan(
        //               style: measureStyle,
        //               children: [
        //                 const TextSpan(text: "total: "),
        //                 TextSpan(
        //                     text: total.toString(),
        //                     style:
        //                         const TextStyle(fontWeight: FontWeight.w700)),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text("Medição", style: measureStyle),
        //           RichText(
        //             text: TextSpan(
        //               style: measureStyle,
        //               children: [
        //                 const TextSpan(text: "distribuída: "),
        //                 TextSpan(
        //                     text: distributed.toString(),
        //                     style:
        //                         const TextStyle(fontWeight: FontWeight.w700)),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
