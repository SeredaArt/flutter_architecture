import 'package:flutter_architecture_data/flutter_architecture_data.dart';
import 'package:flutter_architecture_data/src/internals.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instanse = ServiceProvider();

  void intialize() {
    _getIt.registerLazySingleton<PaymentService>(() => DummyService());
  }
}
