import 'package:flutter_architecture_business/src/main_bloc.dart';
import 'package:flutter_architecture_data/flutter_architecture_data.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instanse = BlocFactory();

  void intialize() {
    ServiceProvider.instanse.intialize();
    _getIt.registerFactory<mainBloc>(
      () => mainBloc(
        payService: ServiceProvider.instanse.get<PaymentService>(),
      ),
    );
  }
}
