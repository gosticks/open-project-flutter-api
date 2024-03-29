//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryUpdateForm {
  /// Returns a new [QueryUpdateForm] instance.
  QueryUpdateForm({
    this.name,
  });

  /// Query name.
  Object? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryUpdateForm &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'QueryUpdateForm[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [QueryUpdateForm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryUpdateForm? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryUpdateForm[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryUpdateForm[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryUpdateForm(
        name: mapValueOfType<Object>(json, r'name'),
      );
    }
    return null;
  }

  static List<QueryUpdateForm> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryUpdateForm>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryUpdateForm.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryUpdateForm> mapFromJson(dynamic json) {
    final map = <String, QueryUpdateForm>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryUpdateForm.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryUpdateForm-objects as value to a dart map
  static Map<String, List<QueryUpdateForm>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryUpdateForm>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryUpdateForm.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

