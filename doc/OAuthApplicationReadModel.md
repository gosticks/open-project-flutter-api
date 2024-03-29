# openapi.model.OAuthApplicationReadModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**type** | **String** |  | 
**name** | **String** | The name of the OAuth 2 application | 
**clientId** | **String** | OAuth 2 client id | 
**clientSecret** | **String** | OAuth 2 client secret. This is only returned when creating a new OAuth application. | [optional] 
**confidential** | **bool** | true, if OAuth 2 credentials are confidential, false, if no secret is stored | 
**createdAt** | [**DateTime**](DateTime.md) | The time the OAuth 2 Application was created at | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | The time the OAuth 2 Application was last updated | [optional] 
**scopes** | **List<String>** |  | [optional] [default to const []]
**links** | [**OAuthApplicationReadModelLinks**](OAuthApplicationReadModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


