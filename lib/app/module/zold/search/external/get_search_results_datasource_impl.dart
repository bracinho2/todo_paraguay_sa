import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/core/http_service/http_service.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/infra/datasource/get_search_results_datasource.dart';
import 'package:uno/uno.dart';

class GetSearchResultsDatasourceImpl implements IGetSearchResultDatasource {
  final HttpClientService _httpClient;

  GetSearchResultsDatasourceImpl(this._httpClient);
  @override
  Future<List<Map<String, dynamic>>> getSearchResult(
      {required QueryParams params}) async {
    try {
      final response = await _httpClient.fetch(
          path: 'https://firebase.flutter.dev/docs/manual-installation/web/');

      return response;
    } on UnoError catch (e, stackTrace) {
      if (e.response!.status == 404) {
        throw HttpClientError(message: 'O servidor não foi encontrado!');
      } else if (e.response!.status == 503) {
        throw HttpClientError(message: 'O servidor está fora do ar!');
      }
      throw HttpClientError(
          message: 'O servidor apresentou um problema', stackTrace: stackTrace);
    }
  }
}
