// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supper_app/color_schemes.g.dart';
import 'package:supper_app/models/models.dart';
import '../providers/providers.dart';

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
  static const List<String> servicesClassification = [""];

  Future<void> test() async {
    ServiceItemProvider serviceItemProvider =
        context.read<ServiceItemProvider>();
    final serviceItems = await serviceItemProvider.fetchServiceItems();
  }

  Future<void> registerProduction() async {
    ServiceItemProvider serviceItemProvider =
        context.read<ServiceItemProvider>();

    serviceItemProvider.insertNewServiceItem(ServiceItem(
      id: 17725,
      unitaryValue: 0.5,
      unitService: "UN",
      description: "SUBSTITUIÇÃO DE TIREFON",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      serviceClassificationId: 3,
      progressiveTablesId: null,
      companyId: 1,
      goal: null,
      workId: 130246001,
    ));
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
                          onTap: () => {},
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
