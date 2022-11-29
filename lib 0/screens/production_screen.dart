// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supper_app/color_schemes.g.dart';
import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/production_provider.dart';

class ProductionScreen extends StatefulWidget {
  final bool hideAppBar;
  const ProductionScreen({
    super.key,
    this.hideAppBar = false,
  });

  @override
  State<ProductionScreen> createState() => _ProductionPageState();
}

class _ProductionPageState extends State<ProductionScreen> {
  Future<void> registerProduction() async {
    ProductionProvider productionProvider = context.read<ProductionProvider>();

    dynamic result = await productionProvider.insertNewProduction(Production(
        date: DateTime.now(),
        designation_id: 1,
        taskName: "Troca de dormentes",
        service_item_id: 1,
        unitaryValue: 0.5,
        finalTaskMensuration: 15,
        employeeIdList: ["01", "02", "03"]));
    if (mounted) {
      if (result is String) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(result, style: const TextStyle(fontSize: 18)),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: screenSize.height * 0.05,
                          decoration: BoxDecoration(
                              color: lightColorScheme.primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Center(
                            child: SizedBox(
                              child: Text(
                                "task name",
                              ),
                            ),
                          ),
                        ),
                        onTap: () => print('1'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: screenSize.height * 0.05,
                          decoration: BoxDecoration(
                              color: lightColorScheme.primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Center(
                            child: SizedBox(
                              child: Text(
                                "designation id",
                              ),
                            ),
                          ),
                        ),
                        onTap: () => print('1'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: screenSize.height * 0.05,
                          decoration: BoxDecoration(
                              color: lightColorScheme.primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Center(
                            child: SizedBox(
                              child: Text(
                                "unitary value",
                              ),
                            ),
                          ),
                        ),
                        onTap: () => print('1'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: screenSize.height * 0.05,
                          decoration: BoxDecoration(
                              color: lightColorScheme.primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Center(
                            child: SizedBox(
                              child: Text(
                                "finalTaskMensuration",
                              ),
                            ),
                          ),
                        ),
                        onTap: () => print('1'),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.1,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          child: Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.05,
                            decoration: BoxDecoration(
                                color: lightColorScheme.primary,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            child: const Center(
                              child: SizedBox(
                                child: Text(
                                  "registrar produção",
                                ),
                              ),
                            ),
                          ),
                          onTap: () => registerProduction(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
