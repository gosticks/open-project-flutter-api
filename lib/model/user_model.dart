//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserModel {
  /// Returns a new [UserModel] instance.
  UserModel({
    required this.type,
    required this.id,
    this.login,
    this.firstName,
    this.lastName,
    required this.name,
    this.email,
    this.admin,
    required this.avatar,
    this.status,
    this.language,
    this.identityUrl,
    this.createdAt,
    this.updatedAt,
    required this.links,
  });

  UserModelTypeEnum? type;

  /// User's id
  ///
  /// Minimum value: 0
  Object? id;

  /// User's login name  # Conditions  **Permission**: Administrator, manage_user global permission
  Object? login;

  /// User's first name  # Conditions  **Permission**: Administrator, manage_user global permission
  Object? firstName;

  /// User's last name  # Conditions  **Permission**: Administrator, manage_user global permission
  Object? lastName;

  /// User's full name, formatting depends on instance settings
  Object? name;

  /// User's email address  # Conditions  E-Mail address not hidden, **Permission**: Administrator, manage_user global permission
  Object? email;

  /// Flag indicating whether or not the user is an admin  # Conditions  **Permission**: Administrator
  Object? admin;

  /// URL to user's avatar
  Object? avatar;

  /// The current activation status of the user (see below)
  Object? status;

  /// User's language | ISO 639-1 format  # Conditions  **Permission**: Administrator, manage_user global permission
  Object? language;

  /// User's identity_url for OmniAuth authentication  # Conditions  **Permission**: Administrator
  Object? identityUrl;

  /// Time of creation
  Object? createdAt;

  /// Time of the most recent change to the user
  Object? updatedAt;

  UserModelLinks links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          other.type == type &&
          other.id == id &&
          other.login == login &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.name == name &&
          other.email == email &&
          other.admin == admin &&
          other.avatar == avatar &&
          other.status == status &&
          other.language == language &&
          other.identityUrl == identityUrl &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (login == null ? 0 : login!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (admin == null ? 0 : admin!.hashCode) +
      (avatar == null ? 0 : avatar!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (language == null ? 0 : language!.hashCode) +
      (identityUrl == null ? 0 : identityUrl!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (links.hashCode);

  @override
  String toString() =>
      'UserModel[type=$type, id=$id, login=$login, firstName=$firstName, lastName=$lastName, name=$name, email=$email, admin=$admin, avatar=$avatar, status=$status, language=$language, identityUrl=$identityUrl, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

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
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.identityUrl != null) {
      json[r'identityUrl'] = this.identityUrl;
    } else {
      json[r'identityUrl'] = null;
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
    json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [UserModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserModel[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserModel(
        type: UserModelTypeEnum.fromJson(json[r'_type']),
        id: mapValueOfType<Object>(json, r'id'),
        login: mapValueOfType<Object>(json, r'login'),
        firstName: mapValueOfType<Object>(json, r'firstName'),
        lastName: mapValueOfType<Object>(json, r'lastName'),
        name: mapValueOfType<Object>(json, r'name'),
        email: mapValueOfType<Object>(json, r'email'),
        admin: mapValueOfType<Object>(json, r'admin'),
        avatar: mapValueOfType<Object>(json, r'avatar'),
        status: mapValueOfType<Object>(json, r'status'),
        language: mapValueOfType<Object>(json, r'language'),
        identityUrl: mapValueOfType<Object>(json, r'identityUrl'),
        createdAt: mapValueOfType<Object>(json, r'createdAt'),
        updatedAt: mapValueOfType<Object>(json, r'updatedAt'),
        links: UserModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<UserModel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserModel> mapFromJson(dynamic json) {
    final map = <String, UserModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserModel-objects as value to a dart map
  static Map<String, List<UserModel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserModel.listFromJson(
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
    'id',
    'name',
    'avatar',
    '_links',
  };
}

class UserModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const user = UserModelTypeEnum._('User');

  /// List of all possible values in this [enum][UserModelTypeEnum].
  static const values = <UserModelTypeEnum>[
    user,
  ];

  static UserModelTypeEnum? fromJson(dynamic value) =>
      UserModelTypeEnumTypeTransformer().decode(value);

  static List<UserModelTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserModelTypeEnum] to Object,
/// and [decode] dynamic data back to [UserModelTypeEnum].
class UserModelTypeEnumTypeTransformer {
  factory UserModelTypeEnumTypeTransformer() =>
      _instance ??= const UserModelTypeEnumTypeTransformer._();

  const UserModelTypeEnumTypeTransformer._();

  Object encode(UserModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'User':
          return UserModelTypeEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserModelTypeEnumTypeTransformer] instance.
  static UserModelTypeEnumTypeTransformer? _instance;
}
