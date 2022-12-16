import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/http_service/dio_http_client_impl.dart';
import 'package:todo_paraguay_sa/app/core/http_service/http_service.dart';
import 'package:uno/uno.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Uno(), export: true),
    Bind.singleton<HttpClientService>((i) => DioHttpClientImpl(), export: true),
  ];
}
