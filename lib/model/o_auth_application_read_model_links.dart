//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OAuthApplicationReadModelLinks {
  /// Returns a new [OAuthApplicationReadModelLinks] instance.
  OAuthApplicationReadModelLinks({
    required this.self,
    required this.owner,
    this.integration,
    required this.redirectUri,
  });

  OAuthApplicationReadModelLinksSelf self;

  OAuthApplicationReadModelLinksOwner owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuthApplicationReadModelLinksIntegration? integration;

  OAuthApplicationReadModelLinksRedirectUri redirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuthApplicationReadModelLinks &&
    other.self == self &&
    other.owner == owner &&
    other.integration == integration &&
    other.redirectUri == redirectUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (owner.hashCode) +
    (integration == null ? 0 : integration!.hashCode) +
    (redirectUri.hashCode);

  @override
  String toString() => 'OAuthApplicationReadModelLinks[self=$self, owner=$owner, integration=$integration, redirectUri=$redirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'owner'] = this.owner;
    if (this.integration != null) {
      json[r'integration'] = this.integration;
    } else {
      json[r'integration'] = null;
    }
      json[r'redirectUri'] = this.redirectUri;
    return json;
  }

  /// Returns a new [OAuthApplicationReadModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuthApplicationReadModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuthApplicationReadModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuthApplicationReadModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuthApplicationReadModelLinks(
        self: OAuthApplicationReadModelLinksSelf.fromJson(json[r'self'])!,
        owner: OAuthApplicationReadModelLinksOwner.fromJson(json[r'owner'])!,
        integration: OAuthApplicationReadModelLinksIntegration.fromJson(json[r'integration']),
        redirectUri: OAuthApplicationReadModelLinksRedirectUri.fromJson(json[r'redirectUri'])!,
      );
    }
    return null;
  }

  static List<OAuthApplicationReadModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthApplicationReadModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthApplicationReadModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuthApplicationReadModelLinks> mapFromJson(dynamic json) {
    final map = <String, OAuthApplicationReadModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuthApplicationReadModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuthApplicationReadModelLinks-objects as value to a dart map
  static Map<String, List<OAuthApplicationReadModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuthApplicationReadModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuthApplicationReadModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'owner',
    'redirectUri',
  };
}

