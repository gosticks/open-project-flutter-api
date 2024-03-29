//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuerySortBysApi {
  QuerySortBysApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// View Query Sort By
  ///
  /// Retrieve an individual QuerySortBy as identified by the id parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QuerySortBy identifier. The identifier is a combination of the column identifier and the direction.
  Future<Response> viewQuerySortByWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/sort_bys/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// View Query Sort By
  ///
  /// Retrieve an individual QuerySortBy as identified by the id parameter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QuerySortBy identifier. The identifier is a combination of the column identifier and the direction.
  Future<QuerySortByModel?> viewQuerySortBy(String id,) async {
    final response = await viewQuerySortByWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuerySortByModel',) as QuerySortByModel;
    
    }
    return null;
  }
}
