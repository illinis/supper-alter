import 'package:isar/isar.dart';

part 'generated/user_model.g.dart';

@collection
class User {
  final Id? id;
  final String name;
  final String workName;
  @Index()
  final String cardNumber;
  final int? employeeId;

  User({
    this.id,
    required this.name,
    required this.workName,
    required this.cardNumber,
    this.employeeId,
  });

  User copyWith({
    int? id,
    String? name,
    String? workName,
    String? cardNumber,
    int? employeeId,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        workName: workName ?? this.workName,
        cardNumber: cardNumber ?? this.cardNumber,
        employeeId: employeeId ?? this.employeeId,
      );
}
