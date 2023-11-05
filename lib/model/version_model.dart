//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VersionModel {
  /// Returns a new [VersionModel] instance.
  VersionModel({
    this.id,
    required this.name,
    this.description,
    this.startDate,
    this.endDate,
    required this.status,
    required this.sharing,
    required this.createdAt,
    required this.updatedAt,
    this.links,
  });

  /// Version id
  Object? id;

  /// Version name
  Object? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ActivityModelComment? description;

  Object? startDate;

  Object? endDate;

  /// The current status of the version
  Object? status;

  /// The current status of the version
  Object? sharing;

  /// Time of creation
  Object? createdAt;

  /// Time of the most recent change to the version
  Object? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VersionModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionModel &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.status == status &&
    other.sharing == sharing &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (sharing == null ? 0 : sharing!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'VersionModel[id=$id, name=$name, description=$description, startDate=$startDate, endDate=$endDate, status=$status, sharing=$sharing, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.sharing != null) {
      json[r'sharing'] = this.sharing;
    } else {
      json[r'sharing'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [VersionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionModel(
        id: mapValueOfType<Object>(json, r'id'),
        name: mapValueOfType<Object>(json, r'name'),
        description: ActivityModelComment.fromJson(json[r'description']),
        startDate: mapValueOfType<Object>(json, r'startDate'),
        endDate: mapValueOfType<Object>(json, r'endDate'),
        status: mapValueOfType<Object>(json, r'status'),
        sharing: mapValueOfType<Object>(json, r'sharing'),
        createdAt: mapValueOfType<Object>(json, r'createdAt'),
        updatedAt: mapValueOfType<Object>(json, r'updatedAt'),
        links: VersionModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<VersionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VersionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionModel> mapFromJson(dynamic json) {
    final map = <String, VersionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionModel-objects as value to a dart map
  static Map<String, List<VersionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VersionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VersionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'status',
    'sharing',
    'createdAt',
    'updatedAt',
  };
}

