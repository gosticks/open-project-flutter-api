//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WorkPackageModelLinksBudget {
  /// Returns a new [WorkPackageModelLinksBudget] instance.
  WorkPackageModelLinksBudget({
    required this.href,
    this.title,
    this.templated = false,
    this.method = 'GET',
    this.payload,
    this.identifier,
  });

  /// URL to the referenced resource (might be relative)
  String? href;

  /// Representative label for the resource
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// If true the href contains parts that need to be replaced by the client
  bool templated;

  /// The HTTP verb to use when requesting the resource
  String method;

  /// The payload to send in the request to achieve the desired result
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? payload;

  /// An optional unique identifier to the link object
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackageModelLinksBudget &&
    other.href == href &&
    other.title == title &&
    other.templated == templated &&
    other.method == method &&
    other.payload == payload &&
    other.identifier == identifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href == null ? 0 : href!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (templated.hashCode) +
    (method.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode);

  @override
  String toString() => 'WorkPackageModelLinksBudget[href=$href, title=$title, templated=$templated, method=$method, payload=$payload, identifier=$identifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'templated'] = this.templated;
      json[r'method'] = this.method;
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    return json;
  }

  /// Returns a new [WorkPackageModelLinksBudget] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackageModelLinksBudget? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackageModelLinksBudget[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackageModelLinksBudget[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackageModelLinksBudget(
        href: mapValueOfType<String>(json, r'href'),
        title: mapValueOfType<String>(json, r'title'),
        templated: mapValueOfType<bool>(json, r'templated') ?? false,
        method: mapValueOfType<String>(json, r'method') ?? 'GET',
        payload: mapValueOfType<Object>(json, r'payload'),
        identifier: mapValueOfType<String>(json, r'identifier'),
      );
    }
    return null;
  }

  static List<WorkPackageModelLinksBudget> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackageModelLinksBudget>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackageModelLinksBudget.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackageModelLinksBudget> mapFromJson(dynamic json) {
    final map = <String, WorkPackageModelLinksBudget>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackageModelLinksBudget.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackageModelLinksBudget-objects as value to a dart map
  static Map<String, List<WorkPackageModelLinksBudget>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackageModelLinksBudget>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkPackageModelLinksBudget.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'href',
  };
}

