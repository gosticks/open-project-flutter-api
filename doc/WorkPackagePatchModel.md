# openapi.model.WorkPackagePatchModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockVersion** | [**Object**](.md) | The version of the item as used for optimistic locking | 
**subject** | [**Object**](.md) | Work package subject | [optional] 
**description** | [**WorkPackageModelDescription**](WorkPackageModelDescription.md) |  | [optional] 
**scheduleManually** | [**Object**](.md) | If false (default) schedule automatically. | [optional] 
**startDate** | [**Object**](.md) | Scheduled beginning of a work package | [optional] 
**dueDate** | [**Object**](.md) | Scheduled end of a work package | [optional] 
**date** | [**Object**](.md) | Date on which a milestone is achieved | [optional] 
**estimatedTime** | [**Object**](.md) | Time a work package likely needs to be completed excluding its descendants | [optional] 
**ignoreNonWorkingDays** | [**Object**](.md) | **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day. | [optional] [readonly] 
**spentTime** | [**Object**](.md) | The time booked for this work package by users working on it  # Conditions  **Permission** view time entries | [optional] [readonly] 
**percentageDone** | [**Object**](.md) | Amount of total completion for a work package | [optional] 
**createdAt** | [**Object**](.md) | Time of creation | [optional] [readonly] 
**updatedAt** | [**Object**](.md) | Time of the most recent change to the work package | [optional] [readonly] 
**links** | [**WorkPackagePatchModelLinks**](WorkPackagePatchModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


