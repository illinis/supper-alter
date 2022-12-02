import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const List<Company> companies = [
    Company(id: 1, name: 'Prumo Engenharia'),
    Company(id: 2, name: 'Prumo Máquinas'),
    Company(id: 3, name: 'Consórcio Prumo DR'),
    Company(id: 4, name: 'CONSORCIO PRDR'),
  ];

  final _formKey = GlobalKey<FormState>();
  final _registrationController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = true;
  int _companyId = 1;

  bool _isLoading = false;

  Future<void> handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    EmployeeProvider employeeProvider = context.read<EmployeeProvider>();
    // Use the fetchEmployees route as an authentication method
    final employees = await employeeProvider.fetchEmployees(
      _registrationController.text,
      _passwordController.text,
      _companyId,
    );

    // employees can be a list or string with an error text
    if (employees is List<Employee> && mounted) {
      Employee tender = employees.firstWhere(
        (element) => element.cardNumber == _registrationController.text,
        orElse: () => Employee(
            id: -1,
            name: _registrationController.text,
            cardNumber: _registrationController.text,
            companyId: _companyId,
            workId: -1,
            positionId: -1),
      );

      ServiceItemProvider serviceItemProvider =
          context.read<ServiceItemProvider>();
      final serviceItems = await serviceItemProvider.fetchServiceItems();

      UserProvider userProvider = context.read<UserProvider>();
      final String? workName = await userProvider.fetchWorkName();

      userProvider.setUser(User(
        name: tender.name,
        workName: workName ?? '',
        cardNumber: tender.cardNumber,
        employeeId: tender.id != -1 ? tender.id : null,
      ));

      if (mounted) {
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(employees)),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  void dispose() {
    _registrationController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
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
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: height * 0.05,
                      bottom: height * 0.05,
                    ),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          child: CustomTextField(
                            controller: _passwordController,
                            labelText: "Senha",
                            hintText: "\u2022\u2022\u2022\u2022\u2022\u2022",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: togglePasswordVisibility,
                              icon: Icon(_isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            obscureText: _isPasswordVisible,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 4) {
                                return 'Entre uma senha válida';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomDropdown(
                            labelText: "Empresa",
                            hintText: "Selecione uma empresa",
                            prefixIcon: const Icon(Icons.home_work),
                            value: _companyId,
                            options: companies.map((e) => e.id).toList(),
                            getLabel: (int value) => companies
                                .firstWhere((element) => element.id == value)
                                .name,
                            onChanged: (int? newValue) {
                              if (newValue != null && newValue != _companyId) {
                                setState(() => _companyId = newValue);
                              }
                            },
                            validator: (int? value) {
                              if (value == null || value.isNaN) {
                                return 'Selecione uma empresa';
                              }
                              return null;
                            },
                          ),
                        ),
                        const Expanded(child: SizedBox.shrink()),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
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
                            text: "Entrar",
                            onPressed: handleLogin,
                          ),
                        ),
                      ],
                    ),
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
