# openapi.model.QueryModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Query id | [optional] [readonly] 
**name** | **String** | Query name | [optional] [readonly] 
**filters** | [**List<QueryFilterInstanceSchemaModel>**](QueryFilterInstanceSchemaModel.md) |  | [optional] [default to const []]
**sums** | **bool** | Should sums (of supported properties) be shown? | [optional] [readonly] 
**timelineVisible** | **bool** | Should the timeline mode be shown? | [optional] [readonly] 
**timelineLabels** | **List<String>** |  | [optional] [default to const []]
**timelineZoomLevel** | **String** | Which zoom level should the timeline be rendered in? | [optional] [readonly] 
**timestamps** | [**Object**](.md) | Timestamps to filter by when showing changed attributes on work packages. | [optional] 
**highlightingMode** | [**Object**](.md) | Which highlighting mode should the table have? | [optional] [readonly] 
**showHierarchies** | [**Object**](.md) | Should the hierarchy mode be enabled? | [optional] [readonly] 
**hidden** | [**Object**](.md) | Should the query be hidden from the query list? | [optional] [readonly] 
**public** | [**Object**](.md) | Can users besides the owner see the query? | [optional] [readonly] 
**starred** | [**Object**](.md) | Should the query be highlighted to the user? | [optional] [readonly] 
**createdAt** | [**Object**](.md) | Time of creation | [readonly] 
**updatedAt** | [**Object**](.md) | Time of the most recent change to the query | [readonly] 
**links** | [**QueryModelLinks**](QueryModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


