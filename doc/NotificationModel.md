# openapi.model.NotificationModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **int** | Notification id | [optional] 
**reason** | **String** | The reason for the notification | [optional] 
**readIAN** | **bool** | Whether the notification is marked as read | [optional] 
**details** | [**List<NotificationModelDetailsInner>**](NotificationModelDetailsInner.md) |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The time the notification was created at | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | The time the notification was last updated | [optional] 
**embedded** | [**NotificationModelEmbedded**](NotificationModelEmbedded.md) |  | [optional] 
**links** | [**NotificationModelLinks**](NotificationModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


