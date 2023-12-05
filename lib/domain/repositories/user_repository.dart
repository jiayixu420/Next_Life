import 'package:mylife/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getCurrentWeather();
}
