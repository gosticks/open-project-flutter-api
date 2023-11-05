# openapi.model.FileLinkReadModelLinksPermission

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | URL to the referenced resource (might be relative) | 
**title** | **String** | Representative label for the resource | [optional] 
**templated** | **bool** | If true the href contains parts that need to be replaced by the client | [optional] [default to false]
**method** | **String** | The HTTP verb to use when requesting the resource | [optional] [default to 'GET']
**payload** | [**Object**](.md) | The payload to send in the request to achieve the desired result | [optional] 
**identifier** | **String** | An optional unique identifier to the link object | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


