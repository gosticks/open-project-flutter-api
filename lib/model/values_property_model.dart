//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValuesPropertyModel {
  /// Returns a new [ValuesPropertyModel] instance.
  ValuesPropertyModel({
    required this.type,
    required this.property,
    required this.value,
    required this.links,
  });

  ValuesPropertyModelTypeEnum? type;

  /// The key of the key - value pair represented by the Values::Property
  Object? property;

  /// The value of the key - value pair represented by the Values::Property
  Object? value;

  ValuesPropertyModelLinks links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValuesPropertyModel &&
          other.type == type &&
          other.property == property &&
          other.value == value &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (property == null ? 0 : property!.hashCode) +
      (value == null ? 0 : value!.hashCode) +
      (links.hashCode);

  @override
  String toString() =>
      'ValuesPropertyModel[type=$type, property=$property, value=$value, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.property != null) {
      json[r'property'] = this.property;
    } else {
      json[r'property'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [ValuesPropertyModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValuesPropertyModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ValuesPropertyModel[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ValuesPropertyModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValuesPropertyModel(
        type: ValuesPropertyModelTypeEnum.fromJson(json[r'_type']),
        property: mapValueOfType<Object>(json, r'property'),
        value: mapValueOfType<Object>(json, r'value'),
        links: ValuesPropertyModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<ValuesPropertyModel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ValuesPropertyModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValuesPropertyModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValuesPropertyModel> mapFromJson(dynamic json) {
    final map = <String, ValuesPropertyModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValuesPropertyModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValuesPropertyModel-objects as value to a dart map
  static Map<String, List<ValuesPropertyModel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ValuesPropertyModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValuesPropertyModel.listFromJson(
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
    'property',
    'value',
    '_links',
  };
}

class ValuesPropertyModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ValuesPropertyModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const valuesColonColonProperty =
      ValuesPropertyModelTypeEnum._('Values::Property');

  /// List of all possible values in this [enum][ValuesPropertyModelTypeEnum].
  static const values = <ValuesPropertyModelTypeEnum>[
    valuesColonColonProperty,
  ];

  static ValuesPropertyModelTypeEnum? fromJson(dynamic value) =>
      ValuesPropertyModelTypeEnumTypeTransformer().decode(value);

  static List<ValuesPropertyModelTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ValuesPropertyModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValuesPropertyModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValuesPropertyModelTypeEnum] to Object,
/// and [decode] dynamic data back to [ValuesPropertyModelTypeEnum].
class ValuesPropertyModelTypeEnumTypeTransformer {
  factory ValuesPropertyModelTypeEnumTypeTransformer() =>
      _instance ??= const ValuesPropertyModelTypeEnumTypeTransformer._();

  const ValuesPropertyModelTypeEnumTypeTransformer._();

  Object encode(ValuesPropertyModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValuesPropertyModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValuesPropertyModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'Values::Property':
          return ValuesPropertyModelTypeEnum.valuesColonColonProperty;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValuesPropertyModelTypeEnumTypeTransformer] instance.
  static ValuesPropertyModelTypeEnumTypeTransformer? _instance;
}
