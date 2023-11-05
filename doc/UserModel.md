# openapi.model.UserModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**Object**](Object.md) |  | 
**id** | [**Object**](.md) | User's id | 
**login** | [**Object**](.md) | User's login name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**firstName** | [**Object**](.md) | User's first name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**lastName** | [**Object**](.md) | User's last name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**name** | [**Object**](.md) | User's full name, formatting depends on instance settings | 
**email** | [**Object**](.md) | User's email address  # Conditions  E-Mail address not hidden, **Permission**: Administrator, manage_user global permission | [optional] 
**admin** | [**Object**](.md) | Flag indicating whether or not the user is an admin  # Conditions  **Permission**: Administrator | [optional] 
**avatar** | [**Object**](.md) | URL to user's avatar | 
**status** | [**Object**](.md) | The current activation status of the user (see below) | [optional] 
**language** | [**Object**](.md) | User's language | ISO 639-1 format  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**identityUrl** | [**Object**](.md) | User's identity_url for OmniAuth authentication  # Conditions  **Permission**: Administrator | [optional] 
**createdAt** | [**Object**](.md) | Time of creation | [optional] 
**updatedAt** | [**Object**](.md) | Time of the most recent change to the user | [optional] 
**links** | [**UserModelLinks**](UserModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


