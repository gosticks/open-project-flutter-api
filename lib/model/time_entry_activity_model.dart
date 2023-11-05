//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntryActivityModel {
  /// Returns a new [TimeEntryActivityModel] instance.
  TimeEntryActivityModel({
    required this.type,
    required this.id,
    required this.name,
    required this.position,
    required this.default_,
    required this.embedded,
    required this.links,
  });

  TimeEntryActivityModelTypeEnum? type;

  /// Time entry id
  ///
  /// Minimum value: 1
  Object? id;

  /// The human readable name chosen for this activity
  Object? name;

  /// The rank the activity has in a list of activities
  Object? position;

  /// Flag to signal whether this activity is the default activity
  Object? default_;

  TimeEntryActivityModelEmbedded embedded;

  TimeEntryActivityModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryActivityModel &&
    other.type == type &&
    other.id == id &&
    other.name == name &&
    other.position == position &&
    other.default_ == default_ &&
    other.embedded == embedded &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (embedded.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'TimeEntryActivityModel[type=$type, id=$id, name=$name, position=$position, default_=$default_, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
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
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
      json[r'_embedded'] = this.embedded;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [TimeEntryActivityModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryActivityModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryActivityModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryActivityModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryActivityModel(
        type: Object.fromJson(json[r'_type']),
        id: mapValueOfType<Object>(json, r'id'),
        name: mapValueOfType<Object>(json, r'name'),
        position: mapValueOfType<Object>(json, r'position'),
        default_: mapValueOfType<Object>(json, r'default'),
        embedded: TimeEntryActivityModelEmbedded.fromJson(json[r'_embedded'])!,
        links: TimeEntryActivityModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<TimeEntryActivityModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryActivityModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryActivityModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryActivityModel> mapFromJson(dynamic json) {
    final map = <String, TimeEntryActivityModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryActivityModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryActivityModel-objects as value to a dart map
  static Map<String, List<TimeEntryActivityModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryActivityModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryActivityModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'name',
    'position',
    'default',
    '_embedded',
    '_links',
  };
}


class TimeEntryActivityModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TimeEntryActivityModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const timeEntriesActivity = TimeEntryActivityModelTypeEnum._('TimeEntriesActivity');

  /// List of all possible values in this [enum][TimeEntryActivityModelTypeEnum].
  static const values = <TimeEntryActivityModelTypeEnum>[
    timeEntriesActivity,
  ];

  static TimeEntryActivityModelTypeEnum? fromJson(dynamic value) => TimeEntryActivityModelTypeEnumTypeTransformer().decode(value);

  static List<TimeEntryActivityModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryActivityModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryActivityModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TimeEntryActivityModelTypeEnum] to Object,
/// and [decode] dynamic data back to [TimeEntryActivityModelTypeEnum].
class TimeEntryActivityModelTypeEnumTypeTransformer {
  factory TimeEntryActivityModelTypeEnumTypeTransformer() => _instance ??= const TimeEntryActivityModelTypeEnumTypeTransformer._();

  const TimeEntryActivityModelTypeEnumTypeTransformer._();

  Object encode(TimeEntryActivityModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TimeEntryActivityModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimeEntryActivityModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'TimeEntriesActivity': return TimeEntryActivityModelTypeEnum.timeEntriesActivity;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimeEntryActivityModelTypeEnumTypeTransformer] instance.
  static TimeEntryActivityModelTypeEnumTypeTransformer? _instance;
}


