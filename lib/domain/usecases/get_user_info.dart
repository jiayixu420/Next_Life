import 'package:mylife/domain/entities/user.dart';
import 'package:mylife/domain/repositories/user_repository.dart';

class GetCurrentUser {
  late UserRepository repository;

  Future<User> execute(String cityName) {
    return repository.getCurrentWeather();
  }
}
