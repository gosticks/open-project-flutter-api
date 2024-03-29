//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedCollectionModelAllOfLinks {
  /// Returns a new [PaginatedCollectionModelAllOfLinks] instance.
  PaginatedCollectionModelAllOfLinks({
    required this.jumpTo,
    required this.changeSize,
  });

  PaginatedCollectionModelAllOfLinksJumpTo jumpTo;

  PaginatedCollectionModelAllOfLinksChangeSize changeSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedCollectionModelAllOfLinks &&
    other.jumpTo == jumpTo &&
    other.changeSize == changeSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jumpTo.hashCode) +
    (changeSize.hashCode);

  @override
  String toString() => 'PaginatedCollectionModelAllOfLinks[jumpTo=$jumpTo, changeSize=$changeSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jumpTo'] = this.jumpTo;
      json[r'changeSize'] = this.changeSize;
    return json;
  }

  /// Returns a new [PaginatedCollectionModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedCollectionModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedCollectionModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedCollectionModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedCollectionModelAllOfLinks(
        jumpTo: PaginatedCollectionModelAllOfLinksJumpTo.fromJson(json[r'jumpTo'])!,
        changeSize: PaginatedCollectionModelAllOfLinksChangeSize.fromJson(json[r'changeSize'])!,
      );
    }
    return null;
  }

  static List<PaginatedCollectionModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedCollectionModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedCollectionModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedCollectionModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, PaginatedCollectionModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedCollectionModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedCollectionModelAllOfLinks-objects as value to a dart map
  static Map<String, List<PaginatedCollectionModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedCollectionModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginatedCollectionModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jumpTo',
    'changeSize',
  };
}

