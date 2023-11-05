# openapi.model.RevisionModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**Object**](.md) | Revision's id, assigned by OpenProject | [optional] [readonly] 
**identifier** | [**Object**](.md) | The raw SCM identifier of the revision (e.g. full SHA hash) | [readonly] 
**formattedIdentifier** | [**Object**](.md) | The SCM identifier of the revision, formatted (e.g. shortened unambiguous SHA hash). May be identical to identifier in many cases | [readonly] 
**authorName** | [**Object**](.md) | The name of the author that committed this revision. Note that this name is retrieved from the repository and does not identify a user in OpenProject. | [readonly] 
**message** | [**RevisionModelMessage**](RevisionModelMessage.md) |  | 
**createdAt** | [**Object**](.md) | The time this revision was committed to the repository | 
**links** | [**RevisionModelLinks**](RevisionModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


