import 'dart:async';
import 'package:flutter_architecture_data/flutter_architecture_data.dart';

class mainBloc {
  late final PaymentService payService;
  final StreamController<int> _eventsController = StreamController();

  mainBloc({
    required this.payService,
  });

  void add(int event) {
    if (_eventsController.isClosed) return;
    _eventsController.add(event) ;
  }

  void dispose() {
   _eventsController.close();
  }
}
