import 'package:equatable/equatable.dart';
import 'package:mylife/domain/entities/user.dart';

class UserModel extends Equatable {
  const UserModel({
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

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json['name'],
        email: json['User'][0]['email'],
        gender: json['User'][0]['gender'],
        dob: json['User'][0]['icon'],
        password: json['email']['temp'],
        appearance: json['email']['appearance'],
        notification: json['email']['notification'],
      );

  Map<String, dynamic> toJson() => {
        'User': [
          {
            'email': email,
            'gender': gender,
            'icon': dob,
          },
        ],
        'email': {
          'temp': password,
          'appearance': appearance,
          'notification': notification,
        },
        'name': userName,
      };

  User toEntity() => User(
        userName: userName,
        email: email,
        gender: gender,
        dob: dob,
        password: password,
        appearance: appearance,
        notification: notification,
      );

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
