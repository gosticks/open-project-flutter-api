//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WorkPackageModel {
  /// Returns a new [WorkPackageModel] instance.
  WorkPackageModel({
    this.id,
    this.lockVersion,
    required this.subject,
    this.type,
    this.description,
    this.scheduleManually,
    this.readonly,
    this.startDate,
    this.dueDate,
    this.date,
    this.derivedStartDate,
    this.derivedDueDate,
    this.duration,
    this.estimatedTime,
    this.derivedEstimatedTime,
    this.ignoreNonWorkingDays,
    this.spentTime,
    this.percentageDone,
    this.createdAt,
    this.updatedAt,
    required this.links,
  });

  /// Work package id
  ///
  /// Minimum value: 1
  Object? id;

  /// The version of the item as used for optimistic locking
  Object? lockVersion;

  /// Work package subject
  Object? subject;

  WorkPackageModelTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelDescription? description;

  /// If false (default) schedule automatically.
  Object? scheduleManually;

  /// If true, the work package is in a readonly status so with the exception of the status, no other property can be altered.
  Object? readonly;

  /// Scheduled beginning of a work package
  Object? startDate;

  /// Scheduled end of a work package
  Object? dueDate;

  /// Date on which a milestone is achieved
  Object? date;

  /// Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
  Object? derivedStartDate;

  /// Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
  Object? derivedDueDate;

  /// **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages.
  Object? duration;

  /// Time a work package likely needs to be completed excluding its descendants
  Object? estimatedTime;

  /// Time a work package likely needs to be completed including its descendants
  Object? derivedEstimatedTime;

  /// **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day.
  Object? ignoreNonWorkingDays;

  /// The time booked for this work package by users working on it  # Conditions  **Permission** view time entries
  Object? spentTime;

  /// Amount of total completion for a work package
  ///
  /// Maximum value: 100
  Object? percentageDone;

  /// Time of creation
  Object? createdAt;

  /// Time of the most recent change to the work package
  Object? updatedAt;

  WorkPackageModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackageModel &&
    other.id == id &&
    other.lockVersion == lockVersion &&
    other.subject == subject &&
    other.type == type &&
    other.description == description &&
    other.scheduleManually == scheduleManually &&
    other.readonly == readonly &&
    other.startDate == startDate &&
    other.dueDate == dueDate &&
    other.date == date &&
    other.derivedStartDate == derivedStartDate &&
    other.derivedDueDate == derivedDueDate &&
    other.duration == duration &&
    other.estimatedTime == estimatedTime &&
    other.derivedEstimatedTime == derivedEstimatedTime &&
    other.ignoreNonWorkingDays == ignoreNonWorkingDays &&
    other.spentTime == spentTime &&
    other.percentageDone == percentageDone &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (lockVersion == null ? 0 : lockVersion!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scheduleManually == null ? 0 : scheduleManually!.hashCode) +
    (readonly == null ? 0 : readonly!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (derivedStartDate == null ? 0 : derivedStartDate!.hashCode) +
    (derivedDueDate == null ? 0 : derivedDueDate!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (derivedEstimatedTime == null ? 0 : derivedEstimatedTime!.hashCode) +
    (ignoreNonWorkingDays == null ? 0 : ignoreNonWorkingDays!.hashCode) +
    (spentTime == null ? 0 : spentTime!.hashCode) +
    (percentageDone == null ? 0 : percentageDone!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'WorkPackageModel[id=$id, lockVersion=$lockVersion, subject=$subject, type=$type, description=$description, scheduleManually=$scheduleManually, readonly=$readonly, startDate=$startDate, dueDate=$dueDate, date=$date, derivedStartDate=$derivedStartDate, derivedDueDate=$derivedDueDate, duration=$duration, estimatedTime=$estimatedTime, derivedEstimatedTime=$derivedEstimatedTime, ignoreNonWorkingDays=$ignoreNonWorkingDays, spentTime=$spentTime, percentageDone=$percentageDone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lockVersion != null) {
      json[r'lockVersion'] = this.lockVersion;
    } else {
      json[r'lockVersion'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.scheduleManually != null) {
      json[r'scheduleManually'] = this.scheduleManually;
    } else {
      json[r'scheduleManually'] = null;
    }
    if (this.readonly != null) {
      json[r'readonly'] = this.readonly;
    } else {
      json[r'readonly'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate;
    } else {
      json[r'dueDate'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.derivedStartDate != null) {
      json[r'derivedStartDate'] = this.derivedStartDate;
    } else {
      json[r'derivedStartDate'] = null;
    }
    if (this.derivedDueDate != null) {
      json[r'derivedDueDate'] = this.derivedDueDate;
    } else {
      json[r'derivedDueDate'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.estimatedTime != null) {
      json[r'estimatedTime'] = this.estimatedTime;
    } else {
      json[r'estimatedTime'] = null;
    }
    if (this.derivedEstimatedTime != null) {
      json[r'derivedEstimatedTime'] = this.derivedEstimatedTime;
    } else {
      json[r'derivedEstimatedTime'] = null;
    }
    if (this.ignoreNonWorkingDays != null) {
      json[r'ignoreNonWorkingDays'] = this.ignoreNonWorkingDays;
    } else {
      json[r'ignoreNonWorkingDays'] = null;
    }
    if (this.spentTime != null) {
      json[r'spentTime'] = this.spentTime;
    } else {
      json[r'spentTime'] = null;
    }
    if (this.percentageDone != null) {
      json[r'percentageDone'] = this.percentageDone;
    } else {
      json[r'percentageDone'] = null;
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

  /// Returns a new [WorkPackageModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackageModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackageModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackageModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackageModel(
        id: mapValueOfType<Object>(json, r'id'),
        lockVersion: mapValueOfType<Object>(json, r'lockVersion'),
        subject: mapValueOfType<Object>(json, r'subject'),
        type: Object.fromJson(json[r'_type']),
        description: WorkPackageModelDescription.fromJson(json[r'description']),
        scheduleManually: mapValueOfType<Object>(json, r'scheduleManually'),
        readonly: mapValueOfType<Object>(json, r'readonly'),
        startDate: mapValueOfType<Object>(json, r'startDate'),
        dueDate: mapValueOfType<Object>(json, r'dueDate'),
        date: mapValueOfType<Object>(json, r'date'),
        derivedStartDate: mapValueOfType<Object>(json, r'derivedStartDate'),
        derivedDueDate: mapValueOfType<Object>(json, r'derivedDueDate'),
        duration: mapValueOfType<Object>(json, r'duration'),
        estimatedTime: mapValueOfType<Object>(json, r'estimatedTime'),
        derivedEstimatedTime: mapValueOfType<Object>(json, r'derivedEstimatedTime'),
        ignoreNonWorkingDays: mapValueOfType<Object>(json, r'ignoreNonWorkingDays'),
        spentTime: mapValueOfType<Object>(json, r'spentTime'),
        percentageDone: mapValueOfType<Object>(json, r'percentageDone'),
        createdAt: mapValueOfType<Object>(json, r'createdAt'),
        updatedAt: mapValueOfType<Object>(json, r'updatedAt'),
        links: WorkPackageModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<WorkPackageModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackageModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackageModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackageModel> mapFromJson(dynamic json) {
    final map = <String, WorkPackageModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackageModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackageModel-objects as value to a dart map
  static Map<String, List<WorkPackageModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackageModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkPackageModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    '_links',
  };
}


class WorkPackageModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WorkPackageModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const workPackage = WorkPackageModelTypeEnum._('WorkPackage');

  /// List of all possible values in this [enum][WorkPackageModelTypeEnum].
  static const values = <WorkPackageModelTypeEnum>[
    workPackage,
  ];

  static WorkPackageModelTypeEnum? fromJson(dynamic value) => WorkPackageModelTypeEnumTypeTransformer().decode(value);

  static List<WorkPackageModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackageModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackageModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WorkPackageModelTypeEnum] to Object,
/// and [decode] dynamic data back to [WorkPackageModelTypeEnum].
class WorkPackageModelTypeEnumTypeTransformer {
  factory WorkPackageModelTypeEnumTypeTransformer() => _instance ??= const WorkPackageModelTypeEnumTypeTransformer._();

  const WorkPackageModelTypeEnumTypeTransformer._();

  Object encode(WorkPackageModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WorkPackageModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WorkPackageModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'WorkPackage': return WorkPackageModelTypeEnum.workPackage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WorkPackageModelTypeEnumTypeTransformer] instance.
  static WorkPackageModelTypeEnumTypeTransformer? _instance;
}


