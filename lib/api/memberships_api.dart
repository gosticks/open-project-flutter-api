//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MembershipsApi {
  MembershipsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Available projects for memberships
  ///
  /// Gets a list of projects in which a membership can be created in. The list contains all projects in which the user issuing the request has the manage members permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableProjectsForMembershipsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/available_projects';

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

  /// Available projects for memberships
  ///
  /// Gets a list of projects in which a membership can be created in. The list contains all projects in which the user issuing the request has the manage members permissions.
  Future<Object?> availableProjectsForMemberships() async {
    final response = await availableProjectsForMembershipsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Create membership
  ///
  /// Creates a new membership applying the attributes provided in the body.  You can use the form and schema to retrieve the valid attribute values and by that be guided towards successful creation.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the newly created membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createMembershipWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create membership
  ///
  /// Creates a new membership applying the attributes provided in the body.  You can use the form and schema to retrieve the valid attribute values and by that be guided towards successful creation.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the newly created membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
  Future<Object?> createMembership() async {
    final response = await createMembershipWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Delete membership
  ///
  /// Deletes the membership.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Response> deleteMembershipWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete membership
  ///
  /// Deletes the membership.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<void> deleteMembership(int id,) async {
    final response = await deleteMembershipWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List memberships
  ///
  /// Returns a collection of memberships. The client can choose to filter the memberships similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain memberships, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + any_name_attribute: filters memberships based on the name of the principal. All possible name variants (and also email and login) are searched.  + blocked: reduces the result set to all memberships that are temporarily blocked or that are not blocked temporarily.  + group: filters memberships based on the name of a group. The group however is not the principal used for filtering. Rather, the memberships of the group are used as the filter values.  + name: filters memberships based on the name of the principal. Note that only the name is used which depends on a setting in the OpenProject instance.  + principal: filters memberships based on the id of the principal.  + project: filters memberships based on the id of the project.  + role: filters memberships based on the id of any role assigned to the membership.  + status: filters memberships based on the status of the principal.  + created_at: filters memberships based on the time the membership was created.  + updated_at: filters memberships based on the time the membership was updated last.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + name: Sort by the name of the principal. Note that this depends on the setting for how the name is to be displayed at least for users.  + email: Sort by the email address of the principal. Groups and principal users, which do not have an email, are sorted last.  + status: Sort by the status of the principal. Groups and principal users, which do not have a status, are sorted together with the active users.  + created_at: Sort by membership creation datetime  + updated_at: Sort by the time the membership was updated last
  Future<Response> listMembershipsWithHttpInfo({ String? filters, String? sortBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
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

  /// List memberships
  ///
  /// Returns a collection of memberships. The client can choose to filter the memberships similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain memberships, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + any_name_attribute: filters memberships based on the name of the principal. All possible name variants (and also email and login) are searched.  + blocked: reduces the result set to all memberships that are temporarily blocked or that are not blocked temporarily.  + group: filters memberships based on the name of a group. The group however is not the principal used for filtering. Rather, the memberships of the group are used as the filter values.  + name: filters memberships based on the name of the principal. Note that only the name is used which depends on a setting in the OpenProject instance.  + principal: filters memberships based on the id of the principal.  + project: filters memberships based on the id of the project.  + role: filters memberships based on the id of any role assigned to the membership.  + status: filters memberships based on the status of the principal.  + created_at: filters memberships based on the time the membership was created.  + updated_at: filters memberships based on the time the membership was updated last.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + name: Sort by the name of the principal. Note that this depends on the setting for how the name is to be displayed at least for users.  + email: Sort by the email address of the principal. Groups and principal users, which do not have an email, are sorted last.  + status: Sort by the status of the principal. Groups and principal users, which do not have a status, are sorted together with the active users.  + created_at: Sort by membership creation datetime  + updated_at: Sort by the time the membership was updated last
  Future<Object?> listMemberships({ String? filters, String? sortBy, }) async {
    final response = await listMembershipsWithHttpInfo( filters: filters, sortBy: sortBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Membership create form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> membershipCreateFormWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/form';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Membership create form
  ///
  /// 
  Future<void> membershipCreateForm() async {
    final response = await membershipCreateFormWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Membership update form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Response> membershipUpdateFormWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Membership update form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<void> membershipUpdateForm(int id,) async {
    final response = await membershipUpdateFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update membership
  ///
  /// Updates the given membership by applying the attributes provided in the body.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the updated membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Response> updateMembershipWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update membership
  ///
  /// Updates the given membership by applying the attributes provided in the body.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the updated membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Object?> updateMembership(int id,) async {
    final response = await updateMembershipWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// View membership
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Response> viewMembershipWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/{id}'
      .replaceAll('{id}', id.toString());

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

  /// View membership
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Membership id
  Future<Object?> viewMembership(int id,) async {
    final response = await viewMembershipWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// View membership schema
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> viewMembershipSchemaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/memberships/schema';

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

  /// View membership schema
  ///
  /// 
  Future<Object?> viewMembershipSchema() async {
    final response = await viewMembershipSchemaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
