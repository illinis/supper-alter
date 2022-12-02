import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/widgets/widgets.dart';
import 'package:supper_app/utils/strings.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Employee> _employees = [];
  List<RegisteredPoint> _registeredPoints = [];

  int employeeRegisteredPoints(Employee employee) =>
      _registeredPoints.where((e) => e.employeeId == employee.id).length;

  void showIconsDescription() {
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        "Legenda:",
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
                Row(
                  children: [
                    Icon(
                      Icons.cancel,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        "Ponto aberto e ainda não finalizado",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        "Ponto aberto e já finalizado",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _employees = context.watch<EmployeeProvider>().getEmployees();
    _registeredPoints = context
        .watch<RegisteredPointProvider>()
        .getRegisteredPoints(lastInterstice: true, intersticeSize: 24);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Registros de ponto",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 5),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: showIconsDescription,
                icon: Icon(
                  Icons.info,
                  size: 20,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          FilledCard(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            children: [
              ..._employees
                  .where((e) => employeeRegisteredPoints(e) > 0)
                  .map(
                    (e) => Row(
                      children: [
                        Icon(
                          employeeRegisteredPoints(e) % 2 == 0
                              ? Icons.check_circle
                              : Icons.cancel,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          e.name.toCapitalized(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  )
                  .toList(),
              if (_registeredPoints.isEmpty)
                Row(
                  children: [
                    const SizedBox(width: 34),
                    Text(
                      "Nenhum ponto",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
            ],
          ),
          Text(
            "Jornada não registrada",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          FilledCard(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.fromLTRB(44, 10, 10, 10),
            children: [
              ..._employees
                  .where((e) => employeeRegisteredPoints(e) == 0)
                  .take(20)
                  .map(
                    (e) => Text(
                      e.name.toCapitalized(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                  .toList(),
              if (_employees.length >= 20)
                Text(
                  '...',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
