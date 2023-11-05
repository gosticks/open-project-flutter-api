//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectStorageModelLinks {
  /// Returns a new [ProjectStorageModelLinks] instance.
  ProjectStorageModelLinks({
    required this.self,
    required this.creator,
    required this.storage,
    required this.project,
    this.projectFolder,
  });

  ProjectStorageModelLinksSelf self;

  ProjectStorageModelLinksCreator creator;

  ProjectStorageModelLinksStorage storage;

  ProjectStorageModelLinksProject project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectStorageModelLinksProjectFolder? projectFolder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectStorageModelLinks &&
    other.self == self &&
    other.creator == creator &&
    other.storage == storage &&
    other.project == project &&
    other.projectFolder == projectFolder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (creator.hashCode) +
    (storage.hashCode) +
    (project.hashCode) +
    (projectFolder == null ? 0 : projectFolder!.hashCode);

  @override
  String toString() => 'ProjectStorageModelLinks[self=$self, creator=$creator, storage=$storage, project=$project, projectFolder=$projectFolder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'creator'] = this.creator;
      json[r'storage'] = this.storage;
      json[r'project'] = this.project;
    if (this.projectFolder != null) {
      json[r'projectFolder'] = this.projectFolder;
    } else {
      json[r'projectFolder'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectStorageModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectStorageModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectStorageModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectStorageModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectStorageModelLinks(
        self: ProjectStorageModelLinksSelf.fromJson(json[r'self'])!,
        creator: ProjectStorageModelLinksCreator.fromJson(json[r'creator'])!,
        storage: ProjectStorageModelLinksStorage.fromJson(json[r'storage'])!,
        project: ProjectStorageModelLinksProject.fromJson(json[r'project'])!,
        projectFolder: ProjectStorageModelLinksProjectFolder.fromJson(json[r'projectFolder']),
      );
    }
    return null;
  }

  static List<ProjectStorageModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectStorageModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStorageModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectStorageModelLinks> mapFromJson(dynamic json) {
    final map = <String, ProjectStorageModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectStorageModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectStorageModelLinks-objects as value to a dart map
  static Map<String, List<ProjectStorageModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectStorageModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectStorageModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'creator',
    'storage',
    'project',
  };
}

