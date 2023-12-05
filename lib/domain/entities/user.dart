import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.userName,
    required this.email,
    required this.gender,
    required this.dob,
    required this.password,
    required this.appearance,
    required this.notification,
  });

  final String userName;
  final String email;
  final String gender;
  final String dob;
  final double password;
  final int appearance;
  final bool notification;

  @override
  List<Object?> get props => [
        userName,
        email,
        gender,
        dob,
        password,
        appearance,
        notification,
      ];
}
