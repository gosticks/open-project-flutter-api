//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OAuthClientCredentialsWriteModel {
  /// Returns a new [OAuthClientCredentialsWriteModel] instance.
  OAuthClientCredentialsWriteModel({
    required this.clientId,
    required this.clientSecret,
  });

  /// OAuth 2 client id
  String clientId;

  /// OAuth 2 client secret
  String clientSecret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuthClientCredentialsWriteModel &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientSecret.hashCode);

  @override
  String toString() => 'OAuthClientCredentialsWriteModel[clientId=$clientId, clientSecret=$clientSecret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clientId'] = this.clientId;
      json[r'clientSecret'] = this.clientSecret;
    return json;
  }

  /// Returns a new [OAuthClientCredentialsWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuthClientCredentialsWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuthClientCredentialsWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuthClientCredentialsWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuthClientCredentialsWriteModel(
        clientId: mapValueOfType<String>(json, r'clientId')!,
        clientSecret: mapValueOfType<String>(json, r'clientSecret')!,
      );
    }
    return null;
  }

  static List<OAuthClientCredentialsWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthClientCredentialsWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthClientCredentialsWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuthClientCredentialsWriteModel> mapFromJson(dynamic json) {
    final map = <String, OAuthClientCredentialsWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuthClientCredentialsWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuthClientCredentialsWriteModel-objects as value to a dart map
  static Map<String, List<OAuthClientCredentialsWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuthClientCredentialsWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuthClientCredentialsWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'clientId',
    'clientSecret',
  };
}

