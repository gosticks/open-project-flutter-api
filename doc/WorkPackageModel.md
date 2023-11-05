# openapi.model.WorkPackageModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**Object**](.md) | Work package id | [optional] [readonly] 
**lockVersion** | [**Object**](.md) | The version of the item as used for optimistic locking | [optional] [readonly] 
**subject** | [**Object**](.md) | Work package subject | 
**type** | [**Object**](Object.md) |  | [optional] [readonly] 
**description** | [**WorkPackageModelDescription**](WorkPackageModelDescription.md) |  | [optional] 
**scheduleManually** | [**Object**](.md) | If false (default) schedule automatically. | [optional] 
**readonly** | [**Object**](.md) | If true, the work package is in a readonly status so with the exception of the status, no other property can be altered. | [optional] 
**startDate** | [**Object**](.md) | Scheduled beginning of a work package | [optional] 
**dueDate** | [**Object**](.md) | Scheduled end of a work package | [optional] 
**date** | [**Object**](.md) | Date on which a milestone is achieved | [optional] 
**derivedStartDate** | [**Object**](.md) | Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate. | [optional] [readonly] 
**derivedDueDate** | [**Object**](.md) | Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate. | [optional] [readonly] 
**duration** | [**Object**](.md) | **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages. | [optional] [readonly] 
**estimatedTime** | [**Object**](.md) | Time a work package likely needs to be completed excluding its descendants | [optional] 
**derivedEstimatedTime** | [**Object**](.md) | Time a work package likely needs to be completed including its descendants | [optional] [readonly] 
**ignoreNonWorkingDays** | [**Object**](.md) | **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day. | [optional] [readonly] 
**spentTime** | [**Object**](.md) | The time booked for this work package by users working on it  # Conditions  **Permission** view time entries | [optional] [readonly] 
**percentageDone** | [**Object**](.md) | Amount of total completion for a work package | [optional] 
**createdAt** | [**Object**](.md) | Time of creation | [optional] [readonly] 
**updatedAt** | [**Object**](.md) | Time of the most recent change to the work package | [optional] [readonly] 
**links** | [**WorkPackageModelLinks**](WorkPackageModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


