//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CollectionsApi {
  CollectionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// view aggregated result
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupBy:
  ///   The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [bool] showSums:
  ///   
  Future<Response> viewAggregatedResultWithHttpInfo({ String? groupBy, bool? showSums, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/examples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_queryParams('', 'showSums', showSums));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// view aggregated result
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [String] groupBy:
  ///   The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [bool] showSums:
  ///   
  Future<void> viewAggregatedResult({ String? groupBy, bool? showSums, }) async {
    final response = await viewAggregatedResultWithHttpInfo( groupBy: groupBy, showSums: showSums, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
