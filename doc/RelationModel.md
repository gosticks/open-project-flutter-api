# openapi.model.RelationModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**Object**](.md) | Relation ID | [optional] [readonly] 
**name** | [**Object**](.md) | The internationalized name of this kind of relation | [optional] 
**type** | [**Object**](.md) | Which kind of relation (blocks, precedes, etc.) | [optional] 
**reverseType** | [**Object**](.md) | The kind of relation from the other WP's perspective | [optional] [readonly] 
**description** | [**Object**](.md) | Short text further describing the relation | [optional] 
**delayStar** | [**Object**](.md) | The delay in days between closing of `from` and start of `to` | [optional] 
**links** | [**RelationModelLinks**](RelationModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


