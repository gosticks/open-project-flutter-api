//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntryCollectionModelAllOfEmbedded {
  /// Returns a new [TimeEntryCollectionModelAllOfEmbedded] instance.
  TimeEntryCollectionModelAllOfEmbedded({
    required this.elements,
  });

  Object? elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryCollectionModelAllOfEmbedded &&
    other.elements == elements;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements == null ? 0 : elements!.hashCode);

  @override
  String toString() => 'TimeEntryCollectionModelAllOfEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.elements != null) {
      json[r'elements'] = this.elements;
    } else {
      json[r'elements'] = null;
    }
    return json;
  }

  /// Returns a new [TimeEntryCollectionModelAllOfEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryCollectionModelAllOfEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryCollectionModelAllOfEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryCollectionModelAllOfEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryCollectionModelAllOfEmbedded(
        elements: mapValueOfType<Object>(json, r'elements'),
      );
    }
    return null;
  }

  static List<TimeEntryCollectionModelAllOfEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryCollectionModelAllOfEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryCollectionModelAllOfEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryCollectionModelAllOfEmbedded> mapFromJson(dynamic json) {
    final map = <String, TimeEntryCollectionModelAllOfEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryCollectionModelAllOfEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryCollectionModelAllOfEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntryCollectionModelAllOfEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryCollectionModelAllOfEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryCollectionModelAllOfEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elements',
  };
}

