//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntryActivityModelEmbedded {
  /// Returns a new [TimeEntryActivityModelEmbedded] instance.
  TimeEntryActivityModelEmbedded({
    required this.projects,
  });

  Object? projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryActivityModelEmbedded &&
    other.projects == projects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects == null ? 0 : projects!.hashCode);

  @override
  String toString() => 'TimeEntryActivityModelEmbedded[projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.projects != null) {
      json[r'projects'] = this.projects;
    } else {
      json[r'projects'] = null;
    }
    return json;
  }

  /// Returns a new [TimeEntryActivityModelEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryActivityModelEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryActivityModelEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryActivityModelEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryActivityModelEmbedded(
        projects: mapValueOfType<Object>(json, r'projects'),
      );
    }
    return null;
  }

  static List<TimeEntryActivityModelEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryActivityModelEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryActivityModelEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryActivityModelEmbedded> mapFromJson(dynamic json) {
    final map = <String, TimeEntryActivityModelEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryActivityModelEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryActivityModelEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntryActivityModelEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryActivityModelEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryActivityModelEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projects',
  };
}

