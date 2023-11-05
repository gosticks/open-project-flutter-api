//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeekDayModel {
  /// Returns a new [WeekDayModel] instance.
  WeekDayModel({
    required this.type,
    required this.day,
    required this.name,
    required this.working,
    this.links,
  });

  WeekDayModelTypeEnum? type;

  /// The week day from 1 to 7. 1 is Monday. 7 is Sunday.
  ///
  /// Minimum value: 1
  /// Maximum value: 7
  Object? day;

  /// The week day name.
  Object? name;

  /// `true` for a working week day, `false` otherwise.
  Object? working;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WeekDaySelfLinkModel? links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekDayModel &&
          other.type == type &&
          other.day == day &&
          other.name == name &&
          other.working == working &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (day == null ? 0 : day!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (working == null ? 0 : working!.hashCode) +
      (links == null ? 0 : links!.hashCode);

  @override
  String toString() =>
      'WeekDayModel[type=$type, day=$day, name=$name, working=$working, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.day != null) {
      json[r'day'] = this.day;
    } else {
      json[r'day'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.working != null) {
      json[r'working'] = this.working;
    } else {
      json[r'working'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [WeekDayModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeekDayModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WeekDayModel[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WeekDayModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeekDayModel(
        type: WeekDayModelTypeEnum.fromJson(json[r'_type']),
        day: mapValueOfType<Object>(json, r'day'),
        name: mapValueOfType<Object>(json, r'name'),
        working: mapValueOfType<Object>(json, r'working'),
        links: WeekDaySelfLinkModel.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<WeekDayModel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeekDayModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeekDayModel> mapFromJson(dynamic json) {
    final map = <String, WeekDayModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeekDayModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeekDayModel-objects as value to a dart map
  static Map<String, List<WeekDayModel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WeekDayModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeekDayModel.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'day',
    'name',
    'working',
  };
}

class WeekDayModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WeekDayModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const weekDay = WeekDayModelTypeEnum._('WeekDay');

  /// List of all possible values in this [enum][WeekDayModelTypeEnum].
  static const values = <WeekDayModelTypeEnum>[
    weekDay,
  ];

  static WeekDayModelTypeEnum? fromJson(dynamic value) =>
      WeekDayModelTypeEnumTypeTransformer().decode(value);

  static List<WeekDayModelTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeekDayModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WeekDayModelTypeEnum] to Object,
/// and [decode] dynamic data back to [WeekDayModelTypeEnum].
class WeekDayModelTypeEnumTypeTransformer {
  factory WeekDayModelTypeEnumTypeTransformer() =>
      _instance ??= const WeekDayModelTypeEnumTypeTransformer._();

  const WeekDayModelTypeEnumTypeTransformer._();

  Object encode(WeekDayModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WeekDayModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WeekDayModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'WeekDay':
          return WeekDayModelTypeEnum.weekDay;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WeekDayModelTypeEnumTypeTransformer] instance.
  static WeekDayModelTypeEnumTypeTransformer? _instance;
}
