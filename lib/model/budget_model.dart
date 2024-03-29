//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BudgetModel {
  /// Returns a new [BudgetModel] instance.
  BudgetModel({
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BudgetModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BudgetModel &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'BudgetModel[links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [BudgetModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BudgetModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BudgetModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BudgetModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BudgetModel(
        links: BudgetModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<BudgetModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BudgetModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BudgetModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BudgetModel> mapFromJson(dynamic json) {
    final map = <String, BudgetModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BudgetModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BudgetModel-objects as value to a dart map
  static Map<String, List<BudgetModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BudgetModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BudgetModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

