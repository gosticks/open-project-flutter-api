# openapi

You're looking at the current **stable** documentation of the OpenProject APIv3. If you're interested in the current
development version, please go to [github.com/opf](https://github.com/opf/openproject/tree/dev/docs/api/apiv3).

## Introduction

The documentation for the APIv3 is written according to the [OpenAPI 3.0 Specification](https://swagger.io/specification/).
You can either view the static version of this documentation on the [website](https://www.openproject.org/docs/api/introduction/)
or the interactive version, rendered with [OpenAPI Explorer](https://github.com/Rhosys/openapi-explorer/blob/main/README.md),
in your OpenProject installation under `/api/docs`.
In the latter you can try out the various API endpoints directly interacting with our OpenProject data.
Moreover you can access the specification source itself under `/api/v3/spec.json` and `/api/v3/spec.yml`
(e.g. [here](https://community.openproject.org/api/v3/spec.yml)).

The APIv3 is a hypermedia REST API, a shorthand for \"Hypermedia As The Engine Of Application State\" (HATEOAS).
This means that each endpoint of this API will have links to other resources or actions defined in the resulting body.

These related resources and actions for any given resource will be context sensitive. For example, only actions that the
authenticated user can take are being rendered. This can be used to dynamically identify actions that the user might take for any
given response.

As an example, if you fetch a work package through the [Work Package endpoint](https://www.openproject.org/docs/api/endpoints/work-packages/), the `update` link will only
be present when the user you authenticated has been granted a permission to update the work package in the assigned project.

## HAL+JSON

HAL is a simple format that gives a consistent and easy way to hyperlink between resources in your API.
Read more in the following specification: [https://tools.ietf.org/html/draft-kelly-json-hal-08](https://tools.ietf.org/html/draft-kelly-json-hal-08)

**OpenProject API implementation of HAL+JSON format** enriches JSON and introduces a few meta properties:

- `_type` - specifies the type of the resource (e.g.: WorkPackage, Project)
- `_links` - contains all related resource and action links available for the resource
- `_embedded` - contains all embedded objects

HAL does not guarantee that embedded resources are embedded in their full representation, they might as well be
partially represented (e.g. some properties can be left out).
However in this API you have the guarantee that whenever a resource is **embedded**, it is embedded in its **full representation**.

## API response structure

All API responses contain a single HAL+JSON object, even collections of objects are technically represented by
a single HAL+JSON object that itself contains its members. More details on collections can be found
in the [Collections Section](https://www.openproject.org/docs/api/collections/).

## Authentication

The API supports the following authentication schemes: OAuth2, session based authentication, and basic auth.

Depending on the settings of the OpenProject instance many resources can be accessed without being authenticated.
In case the instance requires authentication on all requests the client will receive an **HTTP 401** status code
in response to any request.

Otherwise unauthenticated clients have all the permissions of the anonymous user.

### Session-based Authentication

This means you have to login to OpenProject via the Web-Interface to be authenticated in the API.
This method is well-suited for clients acting within the browser, like the Angular-Client built into OpenProject.

In this case, you always need to pass the HTTP header `X-Requested-With \"XMLHttpRequest\"` for authentication.

### API Key through Basic Auth

Users can authenticate towards the API v3 using basic auth with the user name `apikey` (NOT your login) and the API key as the password.
Users can find their API key on their account page.

Example:

```shell
API_KEY=2519132cdf62dcf5a66fd96394672079f9e9cad1
curl -u apikey:$API_KEY https://community.openproject.com/api/v3/users/42
```

### OAuth2.0 authentication

OpenProject allows authentication and authorization with OAuth2 with _Authorization code flow_, as well as _Client credentials_ operation modes.

To get started, you first need to register an application in the OpenProject OAuth administration section of your installation.
This will save an entry for your application with a client unique identifier (`client_id`) and an accompanying secret key (`client_secret`).

You can then use one the following guides to perform the supported OAuth 2.0 flows:

- [Authorization code flow](https://oauth.net/2/grant-types/authorization-code)

- [Authorization code flow with PKCE](https://doorkeeper.gitbook.io/guides/ruby-on-rails/pkce-flow), recommended for clients unable to keep the client_secret confidential.

- [Client credentials](https://oauth.net/2/grant-types/client-credentials/) - Requires an application to be bound to an impersonating user for non-public access

### Why not username and password?

The simplest way to do basic auth would be to use a user's username and password naturally.
However, OpenProject already has supported API keys in the past for the API v2, though not through basic auth.

Using **username and password** directly would have some advantages:

- It is intuitive for the user who then just has to provide those just as they would when logging into OpenProject.

- No extra logic for token management necessary.

On the other hand using **API keys** has some advantages too, which is why we went for that:

- If compromised while saved on an insecure client the user only has to regenerate the API key instead of changing their password, too.

- They are naturally long and random which makes them invulnerable to dictionary attacks and harder to crack in general.

Most importantly users may not actually have a password to begin with. Specifically when they have registered
through an OpenID Connect provider.

## Cross-Origin Resource Sharing (CORS)

By default, the OpenProject API is _not_ responding with any CORS headers.
If you want to allow cross-domain AJAX calls against your OpenProject instance, you need to enable CORS headers being returned.

Please see [our API settings documentation](https://www.openproject.org/docs/system-admin-guide/api-and-webhooks/) on
how to selectively enable CORS.

## Allowed HTTP methods

- `GET` - Get a single resource or collection of resources

- `POST` - Create a new resource or perform

- `PATCH` - Update a resource

- `DELETE` - Delete a resource

## Compression

Responses are compressed if requested by the client. Currently [gzip](https://www.gzip.org/) and [deflate](https://tools.ietf.org/html/rfc1951)
are supported. The client signals the desired compression by setting the [`Accept-Encoding` header](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.3).
If no `Accept-Encoding` header is send, `Accept-Encoding: identity` is assumed which will result in the API responding uncompressed.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github

If this Dart package is published to Github, add the following dependency to your pubspec.yaml

```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local

To use the package in your local drive, add the following dependency to your pubspec.yaml

```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();
final filters = [{ "id": { "operator": "=", "values": ["memberships/create"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Returns only the action having the id or all actions except those having the id(s).
final sortBy = [["id", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + *No sort supported yet*

try {
    final result = api_instance.listActions(filters, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->listActions: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://community.openproject.org*

| Class                          | Method                                                                                                                        | HTTP request                                                     | Description                                                    |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | -------------------------------------------------------------- |
| _ActionsCapabilitiesApi_       | [**listActions**](doc//ActionsCapabilitiesApi.md#listactions)                                                                 | **GET** /api/v3/actions                                          | List actions                                                   |
| _ActionsCapabilitiesApi_       | [**listCapabilities**](doc//ActionsCapabilitiesApi.md#listcapabilities)                                                       | **GET** /api/v3/capabilities                                     | List capabilities                                              |
| _ActionsCapabilitiesApi_       | [**viewAction**](doc//ActionsCapabilitiesApi.md#viewaction)                                                                   | **GET** /api/v3/actions/{id}                                     | View action                                                    |
| _ActionsCapabilitiesApi_       | [**viewCapabilities**](doc//ActionsCapabilitiesApi.md#viewcapabilities)                                                       | **GET** /api/v3/capabilities/{id}                                | View capabilities                                              |
| _ActionsCapabilitiesApi_       | [**viewGlobalContext**](doc//ActionsCapabilitiesApi.md#viewglobalcontext)                                                     | **GET** /api/v3/capabilities/context/global                      | View global context                                            |
| _ActivitiesApi_                | [**updateActivity**](doc//ActivitiesApi.md#updateactivity)                                                                    | **PATCH** /api/v3/activities/{id}                                | Update activity                                                |
| _ActivitiesApi_                | [**viewActivity**](doc//ActivitiesApi.md#viewactivity)                                                                        | **GET** /api/v3/activities/{id}                                  | View activity                                                  |
| _AttachmentsApi_               | [**addAttachmentToPost**](doc//AttachmentsApi.md#addattachmenttopost)                                                         | **POST** /api/v3/posts/{id}/attachments                          | Add attachment to post                                         |
| _AttachmentsApi_               | [**addAttachmentToWikiPage**](doc//AttachmentsApi.md#addattachmenttowikipage)                                                 | **POST** /api/v3/wiki_pages/{id}/attachments                     | Add attachment to wiki page                                    |
| _AttachmentsApi_               | [**createAttachment**](doc//AttachmentsApi.md#createattachment)                                                               | **POST** /api/v3/attachments                                     | Create Attachment                                              |
| _AttachmentsApi_               | [**createWorkPackageAttachment**](doc//AttachmentsApi.md#createworkpackageattachment)                                         | **POST** /api/v3/work_packages/{id}/attachments                  | Create work package attachment                                 |
| _AttachmentsApi_               | [**deleteAttachment**](doc//AttachmentsApi.md#deleteattachment)                                                               | **DELETE** /api/v3/attachments/{id}                              | Delete attachment                                              |
| _AttachmentsApi_               | [**listAttachmentsByPost**](doc//AttachmentsApi.md#listattachmentsbypost)                                                     | **GET** /api/v3/posts/{id}/attachments                           | List attachments by post                                       |
| _AttachmentsApi_               | [**listAttachmentsByWikiPage**](doc//AttachmentsApi.md#listattachmentsbywikipage)                                             | **GET** /api/v3/wiki_pages/{id}/attachments                      | List attachments by wiki page                                  |
| _AttachmentsApi_               | [**listWorkPackageAttachments**](doc//AttachmentsApi.md#listworkpackageattachments)                                           | **GET** /api/v3/work_packages/{id}/attachments                   | List attachments by work package                               |
| _AttachmentsApi_               | [**viewAttachment**](doc//AttachmentsApi.md#viewattachment)                                                                   | **GET** /api/v3/attachments/{id}                                 | View attachment                                                |
| _BudgetsApi_                   | [**viewBudget**](doc//BudgetsApi.md#viewbudget)                                                                               | **GET** /api/v3/budgets/{id}                                     | view Budget                                                    |
| _BudgetsApi_                   | [**viewBudgetsOfAProject**](doc//BudgetsApi.md#viewbudgetsofaproject)                                                         | **GET** /api/v3/projects/{id}/budgets                            | view Budgets of a Project                                      |
| _CategoriesApi_                | [**listCategoriesOfAProject**](doc//CategoriesApi.md#listcategoriesofaproject)                                                | **GET** /api/v3/projects/{id}/categories                         | List categories of a project                                   |
| _CategoriesApi_                | [**viewCategory**](doc//CategoriesApi.md#viewcategory)                                                                        | **GET** /api/v3/categories/{id}                                  | View Category                                                  |
| _CollectionsApi_               | [**viewAggregatedResult**](doc//CollectionsApi.md#viewaggregatedresult)                                                       | **GET** /api/v3/examples                                         | view aggregated result                                         |
| _ConfigurationApi_             | [**viewConfiguration**](doc//ConfigurationApi.md#viewconfiguration)                                                           | **GET** /api/v3/configuration                                    | View configuration                                             |
| _CustomActionsApi_             | [**executeCustomAction**](doc//CustomActionsApi.md#executecustomaction)                                                       | **POST** /api/v3/custom_actions/{id}/execute                     | Execute custom action                                          |
| _CustomActionsApi_             | [**getCustomAction**](doc//CustomActionsApi.md#getcustomaction)                                                               | **GET** /api/v3/custom_actions/{id}                              | Get a custom action                                            |
| _CustomOptionsApi_             | [**viewCustomOption**](doc//CustomOptionsApi.md#viewcustomoption)                                                             | **GET** /api/v3/custom_options/{id}                              | View Custom Option                                             |
| _DocumentsApi_                 | [**listDocuments**](doc//DocumentsApi.md#listdocuments)                                                                       | **GET** /api/v3/documents                                        | List Documents                                                 |
| _DocumentsApi_                 | [**viewDocument**](doc//DocumentsApi.md#viewdocument)                                                                         | **GET** /api/v3/documents/{id}                                   | View document                                                  |
| _FileLinksApi_                 | [**createStorage**](doc//FileLinksApi.md#createstorage)                                                                       | **POST** /api/v3/storages                                        | Creates a storage.                                             |
| _FileLinksApi_                 | [**createStorageOauthCredentials**](doc//FileLinksApi.md#createstorageoauthcredentials)                                       | **POST** /api/v3/storages/{id}/oauth_client_credentials          | Creates an oauth client credentials object for a storage.      |
| _FileLinksApi_                 | [**createWorkPackageFileLink**](doc//FileLinksApi.md#createworkpackagefilelink)                                               | **POST** /api/v3/work_packages/{id}/file_links                   | Creates file links.                                            |
| _FileLinksApi_                 | [**deleteFileLink**](doc//FileLinksApi.md#deletefilelink)                                                                     | **DELETE** /api/v3/file_links/{id}                               | Removes a file link.                                           |
| _FileLinksApi_                 | [**deleteStorage**](doc//FileLinksApi.md#deletestorage)                                                                       | **DELETE** /api/v3/storages/{id}                                 | Delete a storage                                               |
| _FileLinksApi_                 | [**downloadFileLink**](doc//FileLinksApi.md#downloadfilelink)                                                                 | **GET** /api/v3/file_links/{id}/download                         | Creates a download uri of the linked file.                     |
| _FileLinksApi_                 | [**getProjectStorage**](doc//FileLinksApi.md#getprojectstorage)                                                               | **GET** /api/v3/project_storages/{id}                            | Gets a project storage                                         |
| _FileLinksApi_                 | [**getStorage**](doc//FileLinksApi.md#getstorage)                                                                             | **GET** /api/v3/storages/{id}                                    | Get a storage                                                  |
| _FileLinksApi_                 | [**getStorageFiles**](doc//FileLinksApi.md#getstoragefiles)                                                                   | **GET** /api/v3/storages/{id}/files                              | Gets files of a storage.                                       |
| _FileLinksApi_                 | [**listProjectStorages**](doc//FileLinksApi.md#listprojectstorages)                                                           | **GET** /api/v3/project_storages                                 | Gets a list of project storages                                |
| _FileLinksApi_                 | [**listWorkPackageFileLinks**](doc//FileLinksApi.md#listworkpackagefilelinks)                                                 | **GET** /api/v3/work_packages/{id}/file_links                    | Gets all file links of a work package                          |
| _FileLinksApi_                 | [**openFileLink**](doc//FileLinksApi.md#openfilelink)                                                                         | **GET** /api/v3/file_links/{id}/open                             | Creates an opening uri of the linked file.                     |
| _FileLinksApi_                 | [**prepareStorageFileUpload**](doc//FileLinksApi.md#preparestoragefileupload)                                                 | **POST** /api/v3/storages/{id}/files/prepare_upload              | Preparation of a direct upload of a file to the given storage. |
| _FileLinksApi_                 | [**updateStorage**](doc//FileLinksApi.md#updatestorage)                                                                       | **PATCH** /api/v3/storages/{id}                                  | Update a storage                                               |
| _FileLinksApi_                 | [**viewFileLink**](doc//FileLinksApi.md#viewfilelink)                                                                         | **GET** /api/v3/file_links/{id}                                  | Gets a file link.                                              |
| _FormsApi_                     | [**showOrValidateForm**](doc//FormsApi.md#showorvalidateform)                                                                 | **POST** /api/v3/example/form                                    | show or validate form                                          |
| _GridsApi_                     | [**createGrid**](doc//GridsApi.md#creategrid)                                                                                 | **POST** /api/v3/grids                                           | Create a grid                                                  |
| _GridsApi_                     | [**getGrid**](doc//GridsApi.md#getgrid)                                                                                       | **GET** /api/v3/grids/{id}                                       | Get a grid                                                     |
| _GridsApi_                     | [**gridCreateForm**](doc//GridsApi.md#gridcreateform)                                                                         | **POST** /api/v3/grids/form                                      | Grid Create Form                                               |
| _GridsApi_                     | [**gridUpdateForm**](doc//GridsApi.md#gridupdateform)                                                                         | **POST** /api/v3/grids/{id}/form                                 | Grid Update Form                                               |
| _GridsApi_                     | [**listGrids**](doc//GridsApi.md#listgrids)                                                                                   | **GET** /api/v3/grids                                            | List grids                                                     |
| _GridsApi_                     | [**updateGrid**](doc//GridsApi.md#updategrid)                                                                                 | **PATCH** /api/v3/grids/{id}                                     | Update a grid                                                  |
| _GroupsApi_                    | [**createGroup**](doc//GroupsApi.md#creategroup)                                                                              | **POST** /api/v3/groups                                          | Create group                                                   |
| _GroupsApi_                    | [**deleteGroup**](doc//GroupsApi.md#deletegroup)                                                                              | **DELETE** /api/v3/groups/{id}                                   | Delete group                                                   |
| _GroupsApi_                    | [**getGroup**](doc//GroupsApi.md#getgroup)                                                                                    | **GET** /api/v3/groups/{id}                                      | Get group                                                      |
| _GroupsApi_                    | [**listGroups**](doc//GroupsApi.md#listgroups)                                                                                | **GET** /api/v3/groups                                           | List groups                                                    |
| _GroupsApi_                    | [**updateGroup**](doc//GroupsApi.md#updategroup)                                                                              | **PATCH** /api/v3/groups/{id}                                    | Update group                                                   |
| _HelpTextsApi_                 | [**getHelpText**](doc//HelpTextsApi.md#gethelptext)                                                                           | **GET** /api/v3/help_texts/{id}                                  | Get help text                                                  |
| _HelpTextsApi_                 | [**listHelpTexts**](doc//HelpTextsApi.md#listhelptexts)                                                                       | **GET** /api/v3/help_texts                                       | List help texts                                                |
| _MembershipsApi_               | [**availableProjectsForMemberships**](doc//MembershipsApi.md#availableprojectsformemberships)                                 | **GET** /api/v3/memberships/available_projects                   | Available projects for memberships                             |
| _MembershipsApi_               | [**createMembership**](doc//MembershipsApi.md#createmembership)                                                               | **POST** /api/v3/memberships                                     | Create membership                                              |
| _MembershipsApi_               | [**deleteMembership**](doc//MembershipsApi.md#deletemembership)                                                               | **DELETE** /api/v3/memberships/{id}                              | Delete membership                                              |
| _MembershipsApi_               | [**listMemberships**](doc//MembershipsApi.md#listmemberships)                                                                 | **GET** /api/v3/memberships                                      | List memberships                                               |
| _MembershipsApi_               | [**membershipCreateForm**](doc//MembershipsApi.md#membershipcreateform)                                                       | **POST** /api/v3/memberships/form                                | Membership create form                                         |
| _MembershipsApi_               | [**membershipUpdateForm**](doc//MembershipsApi.md#membershipupdateform)                                                       | **POST** /api/v3/memberships/{id}/form                           | Membership update form                                         |
| _MembershipsApi_               | [**updateMembership**](doc//MembershipsApi.md#updatemembership)                                                               | **PATCH** /api/v3/memberships/{id}                               | Update membership                                              |
| _MembershipsApi_               | [**viewMembership**](doc//MembershipsApi.md#viewmembership)                                                                   | **GET** /api/v3/memberships/{id}                                 | View membership                                                |
| _MembershipsApi_               | [**viewMembershipSchema**](doc//MembershipsApi.md#viewmembershipschema)                                                       | **GET** /api/v3/memberships/schema                               | View membership schema                                         |
| _NewsApi_                      | [**listNews**](doc//NewsApi.md#listnews)                                                                                      | **GET** /api/v3/news                                             | List News                                                      |
| _NewsApi_                      | [**viewNews**](doc//NewsApi.md#viewnews)                                                                                      | **GET** /api/v3/news/{id}                                        | View news                                                      |
| _NotificationsApi_             | [**listNotifications**](doc//NotificationsApi.md#listnotifications)                                                           | **GET** /api/v3/notifications                                    | Get notification collection                                    |
| _NotificationsApi_             | [**readNotification**](doc//NotificationsApi.md#readnotification)                                                             | **POST** /api/v3/notifications/{id}/read_ian                     | Read notification                                              |
| _NotificationsApi_             | [**readNotifications**](doc//NotificationsApi.md#readnotifications)                                                           | **POST** /api/v3/notifications/read_ian                          | Read all notifications                                         |
| _NotificationsApi_             | [**unreadNotification**](doc//NotificationsApi.md#unreadnotification)                                                         | **POST** /api/v3/notifications/{id}/unread_ian                   | Unread notification                                            |
| _NotificationsApi_             | [**unreadNotifications**](doc//NotificationsApi.md#unreadnotifications)                                                       | **POST** /api/v3/notifications/unread_ian                        | Unread all notifications                                       |
| _NotificationsApi_             | [**viewNotification**](doc//NotificationsApi.md#viewnotification)                                                             | **GET** /api/v3/notifications/{id}                               | Get the notification                                           |
| _NotificationsApi_             | [**viewNotificationDetail**](doc//NotificationsApi.md#viewnotificationdetail)                                                 | **GET** /api/v3/notifications/{notification_id}/details/{id}     | Get a notification detail                                      |
| _OAuth2Api_                    | [**getOauthApplication**](doc//OAuth2Api.md#getoauthapplication)                                                              | **GET** /api/v3/oauth_applications/{id}                          | Get the oauth application.                                     |
| _OAuth2Api_                    | [**getOauthClientCredentials**](doc//OAuth2Api.md#getoauthclientcredentials)                                                  | **GET** /api/v3/oauth_client_credentials/{id}                    | Get the oauth client credentials object.                       |
| _PostsApi_                     | [**viewPost**](doc//PostsApi.md#viewpost)                                                                                     | **GET** /api/v3/posts/{id}                                       | View Post                                                      |
| _PreviewingApi_                | [**previewMarkdownDocument**](doc//PreviewingApi.md#previewmarkdowndocument)                                                  | **POST** /api/v3/render/markdown                                 | Preview Markdown document                                      |
| _PreviewingApi_                | [**previewPlainDocument**](doc//PreviewingApi.md#previewplaindocument)                                                        | **POST** /api/v3/render/plain                                    | Preview plain document                                         |
| _PrincipalsApi_                | [**listPrincipals**](doc//PrincipalsApi.md#listprincipals)                                                                    | **GET** /api/v3/principals                                       | List principals                                                |
| _PrioritiesApi_                | [**listAllPriorities**](doc//PrioritiesApi.md#listallpriorities)                                                              | **GET** /api/v3/priorities                                       | List all Priorities                                            |
| _PrioritiesApi_                | [**viewPriority**](doc//PrioritiesApi.md#viewpriority)                                                                        | **GET** /api/v3/priorities/{id}                                  | View Priority                                                  |
| _ProjectsApi_                  | [**createProject**](doc//ProjectsApi.md#createproject)                                                                        | **POST** /api/v3/projects                                        | Create project                                                 |
| _ProjectsApi_                  | [**createProjectCopy**](doc//ProjectsApi.md#createprojectcopy)                                                                | **POST** /api/v3/projects/{id}/copy                              | Create project copy                                            |
| _ProjectsApi_                  | [**deleteProject**](doc//ProjectsApi.md#deleteproject)                                                                        | **DELETE** /api/v3/projects/{id}                                 | Delete Project                                                 |
| _ProjectsApi_                  | [**listAvailableParentProjectCandidates**](doc//ProjectsApi.md#listavailableparentprojectcandidates)                          | **GET** /api/v3/projects/available_parent_projects               | List available parent project candidates                       |
| _ProjectsApi_                  | [**listProjects**](doc//ProjectsApi.md#listprojects)                                                                          | **GET** /api/v3/projects                                         | List projects                                                  |
| _ProjectsApi_                  | [**listProjectsWithVersion**](doc//ProjectsApi.md#listprojectswithversion)                                                    | **GET** /api/v3/versions/{id}/projects                           | List projects having version                                   |
| _ProjectsApi_                  | [**projectCopyForm**](doc//ProjectsApi.md#projectcopyform)                                                                    | **POST** /api/v3/projects/{id}/copy/form                         | Project copy form                                              |
| _ProjectsApi_                  | [**projectCreateForm**](doc//ProjectsApi.md#projectcreateform)                                                                | **POST** /api/v3/projects/form                                   | Project create form                                            |
| _ProjectsApi_                  | [**projectUpdateForm**](doc//ProjectsApi.md#projectupdateform)                                                                | **POST** /api/v3/projects/{id}/form                              | Project update form                                            |
| _ProjectsApi_                  | [**updateProject**](doc//ProjectsApi.md#updateproject)                                                                        | **PATCH** /api/v3/projects/{id}                                  | Update Project                                                 |
| _ProjectsApi_                  | [**viewProject**](doc//ProjectsApi.md#viewproject)                                                                            | **GET** /api/v3/projects/{id}                                    | View project                                                   |
| _ProjectsApi_                  | [**viewProjectSchema**](doc//ProjectsApi.md#viewprojectschema)                                                                | **GET** /api/v3/projects/schema                                  | View project schema                                            |
| _ProjectsApi_                  | [**viewProjectStatus**](doc//ProjectsApi.md#viewprojectstatus)                                                                | **GET** /api/v3/project_statuses/{id}                            | View project status                                            |
| _QueriesApi_                   | [**availableProjectsForQuery**](doc//QueriesApi.md#availableprojectsforquery)                                                 | **GET** /api/v3/queries/available_projects                       | Available projects for query                                   |
| _QueriesApi_                   | [**createQuery**](doc//QueriesApi.md#createquery)                                                                             | **POST** /api/v3/queries                                         | Create query                                                   |
| _QueriesApi_                   | [**deleteQuery**](doc//QueriesApi.md#deletequery)                                                                             | **DELETE** /api/v3/queries/{id}                                  | Delete query                                                   |
| _QueriesApi_                   | [**editQuery**](doc//QueriesApi.md#editquery)                                                                                 | **PATCH** /api/v3/queries/{id}                                   | Edit Query                                                     |
| _QueriesApi_                   | [**listQueries**](doc//QueriesApi.md#listqueries)                                                                             | **GET** /api/v3/queries                                          | List queries                                                   |
| _QueriesApi_                   | [**queryCreateForm**](doc//QueriesApi.md#querycreateform)                                                                     | **POST** /api/v3/queries/form                                    | Query Create Form                                              |
| _QueriesApi_                   | [**queryUpdateForm**](doc//QueriesApi.md#queryupdateform)                                                                     | **POST** /api/v3/queries/{id}/form                               | Query Update Form                                              |
| _QueriesApi_                   | [**starQuery**](doc//QueriesApi.md#starquery)                                                                                 | **PATCH** /api/v3/queries/{id}/star                              | Star query                                                     |
| _QueriesApi_                   | [**unstarQuery**](doc//QueriesApi.md#unstarquery)                                                                             | **PATCH** /api/v3/queries/{id}/unstar                            | Unstar query                                                   |
| _QueriesApi_                   | [**viewDefaultQuery**](doc//QueriesApi.md#viewdefaultquery)                                                                   | **GET** /api/v3/queries/default                                  | View default query                                             |
| _QueriesApi_                   | [**viewDefaultQueryForProject**](doc//QueriesApi.md#viewdefaultqueryforproject)                                               | **GET** /api/v3/projects/{id}/queries/default                    | View default query for project                                 |
| _QueriesApi_                   | [**viewQuery**](doc//QueriesApi.md#viewquery)                                                                                 | **GET** /api/v3/queries/{id}                                     | View query                                                     |
| _QueriesApi_                   | [**viewSchemaForGlobalQueries**](doc//QueriesApi.md#viewschemaforglobalqueries)                                               | **GET** /api/v3/queries/schema                                   | View schema for global queries                                 |
| _QueriesApi_                   | [**viewSchemaForProjectQueries**](doc//QueriesApi.md#viewschemaforprojectqueries)                                             | **GET** /api/v3/projects/{id}/queries/schema                     | View schema for project queries                                |
| _QueryColumnsApi_              | [**viewQueryColumn**](doc//QueryColumnsApi.md#viewquerycolumn)                                                                | **GET** /api/v3/queries/columns/{id}                             | View Query Column                                              |
| _QueryFilterInstanceSchemaApi_ | [**listQueryFilterInstanceSchemas**](doc//QueryFilterInstanceSchemaApi.md#listqueryfilterinstanceschemas)                     | **GET** /api/v3/queries/filter_instance_schemas                  | List Query Filter Instance Schemas                             |
| _QueryFilterInstanceSchemaApi_ | [**listQueryFilterInstanceSchemasForProject**](doc//QueryFilterInstanceSchemaApi.md#listqueryfilterinstanceschemasforproject) | **GET** /api/v3/projects/{id}/queries/filter_instance_schemas    | List Query Filter Instance Schemas for Project                 |
| _QueryFilterInstanceSchemaApi_ | [**viewQueryFilterInstanceSchema**](doc//QueryFilterInstanceSchemaApi.md#viewqueryfilterinstanceschema)                       | **GET** /api/v3/queries/filter_instance_schemas/{id}             | View Query Filter Instance Schema                              |
| _QueryFiltersApi_              | [**viewQueryFilter**](doc//QueryFiltersApi.md#viewqueryfilter)                                                                | **GET** /api/v3/queries/filters/{id}                             | View Query Filter                                              |
| _QueryOperatorsApi_            | [**viewQueryOperator**](doc//QueryOperatorsApi.md#viewqueryoperator)                                                          | **GET** /api/v3/queries/operators/{id}                           | View Query Operator                                            |
| _QuerySortBysApi_              | [**viewQuerySortBy**](doc//QuerySortBysApi.md#viewquerysortby)                                                                | **GET** /api/v3/queries/sort_bys/{id}                            | View Query Sort By                                             |
| _RelationsApi_                 | [**deleteRelation**](doc//RelationsApi.md#deleterelation)                                                                     | **DELETE** /api/v3/relations/{id}                                | Delete Relation                                                |
| _RelationsApi_                 | [**editRelation**](doc//RelationsApi.md#editrelation)                                                                         | **PATCH** /api/v3/relations/{id}                                 | Edit Relation                                                  |
| _RelationsApi_                 | [**listRelations**](doc//RelationsApi.md#listrelations)                                                                       | **GET** /api/v3/relations                                        | List Relations                                                 |
| _RelationsApi_                 | [**relationEditForm**](doc//RelationsApi.md#relationeditform)                                                                 | **POST** /api/v3/relations/{id}/form                             | Relation edit form                                             |
| _RelationsApi_                 | [**viewRelation**](doc//RelationsApi.md#viewrelation)                                                                         | **GET** /api/v3/relations/{id}                                   | View Relation                                                  |
| _RelationsApi_                 | [**viewRelationSchema**](doc//RelationsApi.md#viewrelationschema)                                                             | **GET** /api/v3/relations/schema                                 | View relation schema                                           |
| _RelationsApi_                 | [**viewRelationSchemaForType**](doc//RelationsApi.md#viewrelationschemafortype)                                               | **GET** /api/v3/relations/schema/{type}                          | View relation schema for type                                  |
| _RevisionsApi_                 | [**viewRevision**](doc//RevisionsApi.md#viewrevision)                                                                         | **GET** /api/v3/revisions/{id}                                   | View revision                                                  |
| _RolesApi_                     | [**listRoles**](doc//RolesApi.md#listroles)                                                                                   | **GET** /api/v3/roles                                            | List roles                                                     |
| _RolesApi_                     | [**viewRole**](doc//RolesApi.md#viewrole)                                                                                     | **GET** /api/v3/roles/{id}                                       | View role                                                      |
| _RootApi_                      | [**viewRoot**](doc//RootApi.md#viewroot)                                                                                      | **GET** /api/v3                                                  | View root                                                      |
| _SchemasApi_                   | [**viewTheSchema**](doc//SchemasApi.md#viewtheschema)                                                                         | **GET** /api/v3/example/schema                                   | view the schema                                                |
| _StatusesApi_                  | [**listAllStatuses**](doc//StatusesApi.md#listallstatuses)                                                                    | **GET** /api/v3/statuses                                         | List all Statuses                                              |
| _StatusesApi_                  | [**viewStatus**](doc//StatusesApi.md#viewstatus)                                                                              | **GET** /api/v3/statuses/{id}                                    | View Status                                                    |
| _TimeEntriesApi_               | [**availableProjectsForTimeEntries**](doc//TimeEntriesApi.md#availableprojectsfortimeentries)                                 | **GET** /api/v3/time_entries/available_projects                  | Available projects for time entries                            |
| _TimeEntriesApi_               | [**createTimeEntry**](doc//TimeEntriesApi.md#createtimeentry)                                                                 | **POST** /api/v3/time_entries                                    | Create time entry                                              |
| _TimeEntriesApi_               | [**deleteTimeEntry**](doc//TimeEntriesApi.md#deletetimeentry)                                                                 | **DELETE** /api/v3/time_entries/{id}                             | Delete time entry                                              |
| _TimeEntriesApi_               | [**getTimeEntry**](doc//TimeEntriesApi.md#gettimeentry)                                                                       | **GET** /api/v3/time_entries/{id}                                | Get time entry                                                 |
| _TimeEntriesApi_               | [**listTimeEntries**](doc//TimeEntriesApi.md#listtimeentries)                                                                 | **GET** /api/v3/time_entries                                     | List time entries                                              |
| _TimeEntriesApi_               | [**timeEntryCreateForm**](doc//TimeEntriesApi.md#timeentrycreateform)                                                         | **POST** /api/v3/time_entries/form                               | Time entry create form                                         |
| _TimeEntriesApi_               | [**timeEntryUpdateForm**](doc//TimeEntriesApi.md#timeentryupdateform)                                                         | **POST** /api/v3/time_entries/{id}/form                          | Time entry update form                                         |
| _TimeEntriesApi_               | [**updateTimeEntry**](doc//TimeEntriesApi.md#updatetimeentry)                                                                 | **PATCH** /api/v3/time_entries/{id}                              | update time entry                                              |
| _TimeEntriesApi_               | [**viewTimeEntrySchema**](doc//TimeEntriesApi.md#viewtimeentryschema)                                                         | **GET** /api/v3/time_entries/schema                              | View time entry schema                                         |
| _TimeEntryActivitiesApi_       | [**getTimeEntriesActivity**](doc//TimeEntryActivitiesApi.md#gettimeentriesactivity)                                           | **GET** /api/v3/time_entries/activity/{id}                       | View time entries activity                                     |
| _TypesApi_                     | [**listAllTypes**](doc//TypesApi.md#listalltypes)                                                                             | **GET** /api/v3/types                                            | List all Types                                                 |
| _TypesApi_                     | [**listTypesAvailableInAProject**](doc//TypesApi.md#listtypesavailableinaproject)                                             | **GET** /api/v3/projects/{id}/types                              | List types available in a project                              |
| _TypesApi_                     | [**viewType**](doc//TypesApi.md#viewtype)                                                                                     | **GET** /api/v3/types/{id}                                       | View Type                                                      |
| _UserPreferencesApi_           | [**showMyPreferences**](doc//UserPreferencesApi.md#showmypreferences)                                                         | **GET** /api/v3/my_preferences                                   | Show my preferences                                            |
| _UserPreferencesApi_           | [**updateUserPreferences**](doc//UserPreferencesApi.md#updateuserpreferences)                                                 | **PATCH** /api/v3/my_preferences                                 | Update my preferences                                          |
| _UsersApi_                     | [**createUser**](doc//UsersApi.md#createuser)                                                                                 | **POST** /api/v3/users                                           | Create User                                                    |
| _UsersApi_                     | [**deleteUser**](doc//UsersApi.md#deleteuser)                                                                                 | **DELETE** /api/v3/users/{id}                                    | Delete user                                                    |
| _UsersApi_                     | [**listUsers**](doc//UsersApi.md#listusers)                                                                                   | **GET** /api/v3/users                                            | List Users                                                     |
| _UsersApi_                     | [**lockUser**](doc//UsersApi.md#lockuser)                                                                                     | **POST** /api/v3/users/{id}/lock                                 | Lock user                                                      |
| _UsersApi_                     | [**unlockUser**](doc//UsersApi.md#unlockuser)                                                                                 | **DELETE** /api/v3/users/{id}/lock                               | Unlock user                                                    |
| _UsersApi_                     | [**updateUser**](doc//UsersApi.md#updateuser)                                                                                 | **PATCH** /api/v3/users/{id}                                     | Update user                                                    |
| _UsersApi_                     | [**userUpdateForm**](doc//UsersApi.md#userupdateform)                                                                         | **POST** /api/v3/users/{id}/form                                 | User update form                                               |
| _UsersApi_                     | [**viewUser**](doc//UsersApi.md#viewuser)                                                                                     | **GET** /api/v3/users/{id}                                       | View user                                                      |
| _UsersApi_                     | [**viewUserSchema**](doc//UsersApi.md#viewuserschema)                                                                         | **GET** /api/v3/users/schema                                     | View user schema                                               |
| _ValuesPropertyApi_            | [**viewNotificationDetail**](doc//ValuesPropertyApi.md#viewnotificationdetail)                                                | **GET** /api/v3/notifications/{notification_id}/details/{id}     | Get a notification detail                                      |
| _ValuesPropertyApi_            | [**viewValuesSchema**](doc//ValuesPropertyApi.md#viewvaluesschema)                                                            | **GET** /api/v3/values/schema/{id}                               | View Values schema                                             |
| _VersionsApi_                  | [**availableProjectsForVersions**](doc//VersionsApi.md#availableprojectsforversions)                                          | **GET** /api/v3/versions/available_projects                      | Available projects for versions                                |
| _VersionsApi_                  | [**createVersion**](doc//VersionsApi.md#createversion)                                                                        | **POST** /api/v3/versions                                        | Create version                                                 |
| _VersionsApi_                  | [**deleteVersion**](doc//VersionsApi.md#deleteversion)                                                                        | **DELETE** /api/v3/versions/{id}                                 | Delete version                                                 |
| _VersionsApi_                  | [**listVersions**](doc//VersionsApi.md#listversions)                                                                          | **GET** /api/v3/versions                                         | List versions                                                  |
| _VersionsApi_                  | [**listVersionsAvailableInAProject**](doc//VersionsApi.md#listversionsavailableinaproject)                                    | **GET** /api/v3/projects/{id}/versions                           | List versions available in a project                           |
| _VersionsApi_                  | [**updateVersion**](doc//VersionsApi.md#updateversion)                                                                        | **PATCH** /api/v3/versions/{id}                                  | Update Version                                                 |
| _VersionsApi_                  | [**versionCreateForm**](doc//VersionsApi.md#versioncreateform)                                                                | **POST** /api/v3/versions/form                                   | Version create form                                            |
| _VersionsApi_                  | [**versionUpdateForm**](doc//VersionsApi.md#versionupdateform)                                                                | **POST** /api/v3/versions/{id}/form                              | Version update form                                            |
| _VersionsApi_                  | [**viewVersion**](doc//VersionsApi.md#viewversion)                                                                            | **GET** /api/v3/versions/{id}                                    | View version                                                   |
| _VersionsApi_                  | [**viewVersionSchema**](doc//VersionsApi.md#viewversionschema)                                                                | **GET** /api/v3/versions/schema                                  | View version schema                                            |
| _ViewsApi_                     | [**createViews**](doc//ViewsApi.md#createviews)                                                                               | **POST** /api/v3/views/{id}                                      | Create view                                                    |
| _ViewsApi_                     | [**listViews**](doc//ViewsApi.md#listviews)                                                                                   | **GET** /api/v3/views                                            | List views                                                     |
| _ViewsApi_                     | [**viewView**](doc//ViewsApi.md#viewview)                                                                                     | **GET** /api/v3/views/{id}                                       | View view                                                      |
| _WikiPagesApi_                 | [**viewWikiPage**](doc//WikiPagesApi.md#viewwikipage)                                                                         | **GET** /api/v3/wiki_pages/{id}                                  | View Wiki Page                                                 |
| _WorkPackagesApi_              | [**addWatcher**](doc//WorkPackagesApi.md#addwatcher)                                                                          | **POST** /api/v3/work_packages/{id}/watchers                     | Add watcher                                                    |
| _WorkPackagesApi_              | [**availableAssignees**](doc//WorkPackagesApi.md#availableassignees)                                                          | **GET** /api/v3/projects/{id}/available_assignees                | Available assignees                                            |
| _WorkPackagesApi_              | [**availableProjectsForWorkPackage**](doc//WorkPackagesApi.md#availableprojectsforworkpackage)                                | **GET** /api/v3/work_packages/{id}/available_projects            | Available projects for work package                            |
| _WorkPackagesApi_              | [**availableResponsibles**](doc//WorkPackagesApi.md#availableresponsibles)                                                    | **GET** /api/v3/projects/{id}/available_responsibles             | Available responsibles                                         |
| _WorkPackagesApi_              | [**availableWatchers**](doc//WorkPackagesApi.md#availablewatchers)                                                            | **GET** /api/v3/work_packages/{id}/available_watchers            | Available watchers                                             |
| _WorkPackagesApi_              | [**commentWorkPackage**](doc//WorkPackagesApi.md#commentworkpackage)                                                          | **POST** /api/v3/work_packages/{id}/activities                   | Comment work package                                           |
| _WorkPackagesApi_              | [**createProjectWorkPackage**](doc//WorkPackagesApi.md#createprojectworkpackage)                                              | **POST** /api/v3/projects/{id}/work_packages                     | Create work package in project                                 |
| _WorkPackagesApi_              | [**createRelation**](doc//WorkPackagesApi.md#createrelation)                                                                  | **POST** /api/v3/work_packages/{id}/relations                    | Create Relation                                                |
| _WorkPackagesApi_              | [**createWorkPackage**](doc//WorkPackagesApi.md#createworkpackage)                                                            | **POST** /api/v3/work_packages                                   | Create Work Package                                            |
| _WorkPackagesApi_              | [**createWorkPackageFileLink**](doc//WorkPackagesApi.md#createworkpackagefilelink)                                            | **POST** /api/v3/work_packages/{id}/file_links                   | Creates file links.                                            |
| _WorkPackagesApi_              | [**deleteWorkPackage**](doc//WorkPackagesApi.md#deleteworkpackage)                                                            | **DELETE** /api/v3/work_packages/{id}                            | Delete Work Package                                            |
| _WorkPackagesApi_              | [**getProjectWorkPackageCollection**](doc//WorkPackagesApi.md#getprojectworkpackagecollection)                                | **GET** /api/v3/projects/{id}/work_packages                      | Get work packages of project                                   |
| _WorkPackagesApi_              | [**listAvailableRelationCandidates**](doc//WorkPackagesApi.md#listavailablerelationcandidates)                                | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates                                  |
| _WorkPackagesApi_              | [**listRelations**](doc//WorkPackagesApi.md#listrelations)                                                                    | **GET** /api/v3/work_packages/{id}/relations                     | List relations                                                 |
| _WorkPackagesApi_              | [**listWatchers**](doc//WorkPackagesApi.md#listwatchers)                                                                      | **GET** /api/v3/work_packages/{id}/watchers                      | List watchers                                                  |
| _WorkPackagesApi_              | [**listWorkPackageActivities**](doc//WorkPackagesApi.md#listworkpackageactivities)                                            | **GET** /api/v3/work_packages/{id}/activities                    | List work package activities                                   |
| _WorkPackagesApi_              | [**listWorkPackageFileLinks**](doc//WorkPackagesApi.md#listworkpackagefilelinks)                                              | **GET** /api/v3/work_packages/{id}/file_links                    | Gets all file links of a work package                          |
| _WorkPackagesApi_              | [**listWorkPackageSchemas**](doc//WorkPackagesApi.md#listworkpackageschemas)                                                  | **GET** /api/v3/work_packages/schemas                            | List Work Package Schemas                                      |
| _WorkPackagesApi_              | [**listWorkPackages**](doc//WorkPackagesApi.md#listworkpackages)                                                              | **GET** /api/v3/work_packages                                    | List work packages                                             |
| _WorkPackagesApi_              | [**removeWatcher**](doc//WorkPackagesApi.md#removewatcher)                                                                    | **DELETE** /api/v3/work_packages/{id}/watchers/{user_id}         | Remove watcher                                                 |
| _WorkPackagesApi_              | [**revisions**](doc//WorkPackagesApi.md#revisions)                                                                            | **GET** /api/v3/work_packages/{id}/revisions                     | Revisions                                                      |
| _WorkPackagesApi_              | [**updateWorkPackage**](doc//WorkPackagesApi.md#updateworkpackage)                                                            | **PATCH** /api/v3/work_packages/{id}                             | Update a Work Package                                          |
| _WorkPackagesApi_              | [**viewWorkPackage**](doc//WorkPackagesApi.md#viewworkpackage)                                                                | **GET** /api/v3/work_packages/{id}                               | View Work Package                                              |
| _WorkPackagesApi_              | [**viewWorkPackageSchema**](doc//WorkPackagesApi.md#viewworkpackageschema)                                                    | **GET** /api/v3/work_packages/schemas/{identifier}               | View Work Package Schema                                       |
| _WorkPackagesApi_              | [**workPackageCreateForm**](doc//WorkPackagesApi.md#workpackagecreateform)                                                    | **POST** /api/v3/work_packages/form                              | Work Package Create Form                                       |
| _WorkPackagesApi_              | [**workPackageCreateFormForProject**](doc//WorkPackagesApi.md#workpackagecreateformforproject)                                | **POST** /api/v3/projects/{id}/work_packages/form                | Work Package Create Form For Project                           |
| _WorkPackagesApi_              | [**workPackageEditForm**](doc//WorkPackagesApi.md#workpackageeditform)                                                        | **POST** /api/v3/work_packages/{id}/form                         | Work Package Edit Form                                         |
| _WorkScheduleApi_              | [**createNonWorkingDay**](doc//WorkScheduleApi.md#createnonworkingday)                                                        | **POST** /api/v3/days/non_working                                | Creates a non-working day (NOT IMPLEMENTED)                    |
| _WorkScheduleApi_              | [**deleteNonWorkingDay**](doc//WorkScheduleApi.md#deletenonworkingday)                                                        | **DELETE** /api/v3/days/non_working/{date}                       | Removes a non-working day (NOT IMPLEMENTED)                    |
| _WorkScheduleApi_              | [**listDays**](doc//WorkScheduleApi.md#listdays)                                                                              | **GET** /api/v3/days                                             | Lists days                                                     |
| _WorkScheduleApi_              | [**listNonWorkingDays**](doc//WorkScheduleApi.md#listnonworkingdays)                                                          | **GET** /api/v3/days/non_working                                 | Lists all non working days                                     |
| _WorkScheduleApi_              | [**listWeekDays**](doc//WorkScheduleApi.md#listweekdays)                                                                      | **GET** /api/v3/days/week                                        | Lists week days                                                |
| _WorkScheduleApi_              | [**updateNonWorkingDay**](doc//WorkScheduleApi.md#updatenonworkingday)                                                        | **PATCH** /api/v3/days/non_working/{date}                        | Update a non-working day attributes (NOT IMPLEMENTED)          |
| _WorkScheduleApi_              | [**updateWeekDay**](doc//WorkScheduleApi.md#updateweekday)                                                                    | **PATCH** /api/v3/days/week/{day}                                | Update a week day attributes (NOT IMPLEMENTED)                 |
| _WorkScheduleApi_              | [**updateWeekDays**](doc//WorkScheduleApi.md#updateweekdays)                                                                  | **PATCH** /api/v3/days/week                                      | Update week days (NOT IMPLEMENTED)                             |
| _WorkScheduleApi_              | [**viewDay**](doc//WorkScheduleApi.md#viewday)                                                                                | **GET** /api/v3/days/{date}                                      | View day                                                       |
| _WorkScheduleApi_              | [**viewNonWorkingDay**](doc//WorkScheduleApi.md#viewnonworkingday)                                                            | **GET** /api/v3/days/non_working/{date}                          | View a non-working day                                         |
| _WorkScheduleApi_              | [**viewWeekDay**](doc//WorkScheduleApi.md#viewweekday)                                                                        | **GET** /api/v3/days/week/{day}                                  | View a week day                                                |

## Documentation For Models

- [ActivityModel](doc//ActivityModel.md)
- [ActivityModelComment](doc//ActivityModelComment.md)
- [AddWatcherRequest](doc//AddWatcherRequest.md)
- [AttachmentModel](doc//AttachmentModel.md)
- [AttachmentModelDescription](doc//AttachmentModelDescription.md)
- [AttachmentModelLinks](doc//AttachmentModelLinks.md)
- [AttachmentModelLinksAuthor](doc//AttachmentModelLinksAuthor.md)
- [AttachmentModelLinksContainer](doc//AttachmentModelLinksContainer.md)
- [AttachmentModelLinksDelete](doc//AttachmentModelLinksDelete.md)
- [AttachmentModelLinksDownloadLocation](doc//AttachmentModelLinksDownloadLocation.md)
- [AttachmentModelLinksSelf](doc//AttachmentModelLinksSelf.md)
- [AttachmentsModel](doc//AttachmentsModel.md)
- [AttachmentsModelAllOfEmbedded](doc//AttachmentsModelAllOfEmbedded.md)
- [AttachmentsModelAllOfEmbeddedElementsInner](doc//AttachmentsModelAllOfEmbeddedElementsInner.md)
- [AttachmentsModelAllOfLinks](doc//AttachmentsModelAllOfLinks.md)
- [AttachmentsModelAllOfLinksSelf](doc//AttachmentsModelAllOfLinksSelf.md)
- [BudgetModel](doc//BudgetModel.md)
- [BudgetModelLinks](doc//BudgetModelLinks.md)
- [BudgetModelLinksSelf](doc//BudgetModelLinksSelf.md)
- [CategoryModel](doc//CategoryModel.md)
- [CategoryModelLinks](doc//CategoryModelLinks.md)
- [CategoryModelLinksDefaultAssignee](doc//CategoryModelLinksDefaultAssignee.md)
- [CategoryModelLinksProject](doc//CategoryModelLinksProject.md)
- [CategoryModelLinksSelf](doc//CategoryModelLinksSelf.md)
- [CollectionModel](doc//CollectionModel.md)
- [CollectionModelLinks](doc//CollectionModelLinks.md)
- [CollectionModelLinksSelf](doc//CollectionModelLinksSelf.md)
- [CommentWorkPackageRequest](doc//CommentWorkPackageRequest.md)
- [ConfigurationModel](doc//ConfigurationModel.md)
- [CreateViewsRequest](doc//CreateViewsRequest.md)
- [CreateViewsRequestLinks](doc//CreateViewsRequestLinks.md)
- [CreateViewsRequestLinksQuery](doc//CreateViewsRequestLinksQuery.md)
- [CustomActionModel](doc//CustomActionModel.md)
- [CustomActionModelLinks](doc//CustomActionModelLinks.md)
- [CustomActionModelLinksExecuteImmediately](doc//CustomActionModelLinksExecuteImmediately.md)
- [CustomActionModelLinksSelf](doc//CustomActionModelLinksSelf.md)
- [CustomOptionModel](doc//CustomOptionModel.md)
- [CustomOptionModelLinks](doc//CustomOptionModelLinks.md)
- [CustomOptionModelLinksSelf](doc//CustomOptionModelLinksSelf.md)
- [DayCollectionModel](doc//DayCollectionModel.md)
- [DayCollectionModelAllOfEmbedded](doc//DayCollectionModelAllOfEmbedded.md)
- [DayCollectionModelAllOfLinks](doc//DayCollectionModelAllOfLinks.md)
- [DayCollectionModelAllOfLinksSelf](doc//DayCollectionModelAllOfLinksSelf.md)
- [DayModel](doc//DayModel.md)
- [DayModelLinks](doc//DayModelLinks.md)
- [DayModelLinksWeekDay](doc//DayModelLinksWeekDay.md)
- [DocumentModel](doc//DocumentModel.md)
- [DocumentModelLinks](doc//DocumentModelLinks.md)
- [DocumentModelLinksAttachments](doc//DocumentModelLinksAttachments.md)
- [DocumentModelLinksProject](doc//DocumentModelLinksProject.md)
- [DocumentModelLinksSelf](doc//DocumentModelLinksSelf.md)
- [ErrorResponse](doc//ErrorResponse.md)
- [ErrorResponseEmbedded](doc//ErrorResponseEmbedded.md)
- [ErrorResponseEmbeddedDetails](doc//ErrorResponseEmbeddedDetails.md)
- [ExecuteCustomActionRequest](doc//ExecuteCustomActionRequest.md)
- [ExecuteCustomActionRequestLinks](doc//ExecuteCustomActionRequestLinks.md)
- [ExecuteCustomActionRequestLinksWorkPackage](doc//ExecuteCustomActionRequestLinksWorkPackage.md)
- [FileLinkCollectionReadModel](doc//FileLinkCollectionReadModel.md)
- [FileLinkCollectionReadModelAllOfEmbedded](doc//FileLinkCollectionReadModelAllOfEmbedded.md)
- [FileLinkCollectionReadModelAllOfLinks](doc//FileLinkCollectionReadModelAllOfLinks.md)
- [FileLinkCollectionReadModelAllOfLinksSelf](doc//FileLinkCollectionReadModelAllOfLinksSelf.md)
- [FileLinkCollectionWriteModel](doc//FileLinkCollectionWriteModel.md)
- [FileLinkCollectionWriteModelAllOfEmbedded](doc//FileLinkCollectionWriteModelAllOfEmbedded.md)
- [FileLinkOriginDataModel](doc//FileLinkOriginDataModel.md)
- [FileLinkReadModel](doc//FileLinkReadModel.md)
- [FileLinkReadModelEmbedded](doc//FileLinkReadModelEmbedded.md)
- [FileLinkReadModelLinks](doc//FileLinkReadModelLinks.md)
- [FileLinkReadModelLinksContainer](doc//FileLinkReadModelLinksContainer.md)
- [FileLinkReadModelLinksCreator](doc//FileLinkReadModelLinksCreator.md)
- [FileLinkReadModelLinksDelete](doc//FileLinkReadModelLinksDelete.md)
- [FileLinkReadModelLinksOriginOpen](doc//FileLinkReadModelLinksOriginOpen.md)
- [FileLinkReadModelLinksOriginOpenLocation](doc//FileLinkReadModelLinksOriginOpenLocation.md)
- [FileLinkReadModelLinksPermission](doc//FileLinkReadModelLinksPermission.md)
- [FileLinkReadModelLinksSelf](doc//FileLinkReadModelLinksSelf.md)
- [FileLinkReadModelLinksStaticOriginDownload](doc//FileLinkReadModelLinksStaticOriginDownload.md)
- [FileLinkReadModelLinksStaticOriginOpen](doc//FileLinkReadModelLinksStaticOriginOpen.md)
- [FileLinkReadModelLinksStaticOriginOpenLocation](doc//FileLinkReadModelLinksStaticOriginOpenLocation.md)
- [FileLinkReadModelLinksStorage](doc//FileLinkReadModelLinksStorage.md)
- [FileLinkWriteModel](doc//FileLinkWriteModel.md)
- [Formattable](doc//Formattable.md)
- [GridCollectionModel](doc//GridCollectionModel.md)
- [GridCollectionModelAllOfEmbedded](doc//GridCollectionModelAllOfEmbedded.md)
- [GridReadModel](doc//GridReadModel.md)
- [GridReadModelLinks](doc//GridReadModelLinks.md)
- [GridReadModelLinksAddAttachment](doc//GridReadModelLinksAddAttachment.md)
- [GridReadModelLinksAttachments](doc//GridReadModelLinksAttachments.md)
- [GridReadModelLinksDelete](doc//GridReadModelLinksDelete.md)
- [GridReadModelLinksScope](doc//GridReadModelLinksScope.md)
- [GridReadModelLinksSelf](doc//GridReadModelLinksSelf.md)
- [GridReadModelLinksUpdate](doc//GridReadModelLinksUpdate.md)
- [GridReadModelLinksUpdateImmediately](doc//GridReadModelLinksUpdateImmediately.md)
- [GridWidgetModel](doc//GridWidgetModel.md)
- [GridWriteModel](doc//GridWriteModel.md)
- [GridWriteModelLinks](doc//GridWriteModelLinks.md)
- [GroupCollectionModel](doc//GroupCollectionModel.md)
- [GroupCollectionModelAllOfEmbedded](doc//GroupCollectionModelAllOfEmbedded.md)
- [GroupCollectionModelAllOfLinks](doc//GroupCollectionModelAllOfLinks.md)
- [GroupCollectionModelAllOfLinksSelf](doc//GroupCollectionModelAllOfLinksSelf.md)
- [GroupModel](doc//GroupModel.md)
- [GroupModelLinks](doc//GroupModelLinks.md)
- [GroupModelLinksDelete](doc//GroupModelLinksDelete.md)
- [GroupModelLinksMembersInner](doc//GroupModelLinksMembersInner.md)
- [GroupModelLinksMemberships](doc//GroupModelLinksMemberships.md)
- [GroupModelLinksSelf](doc//GroupModelLinksSelf.md)
- [GroupModelLinksUpdateImmediately](doc//GroupModelLinksUpdateImmediately.md)
- [GroupWriteModel](doc//GroupWriteModel.md)
- [GroupWriteModelLinks](doc//GroupWriteModelLinks.md)
- [GroupWriteModelLinksMembersInner](doc//GroupWriteModelLinksMembersInner.md)
- [HelpTextCollectionModel](doc//HelpTextCollectionModel.md)
- [HelpTextCollectionModelAllOfEmbedded](doc//HelpTextCollectionModelAllOfEmbedded.md)
- [HelpTextCollectionModelAllOfLinks](doc//HelpTextCollectionModelAllOfLinks.md)
- [HelpTextCollectionModelAllOfLinksSelf](doc//HelpTextCollectionModelAllOfLinksSelf.md)
- [HelpTextModel](doc//HelpTextModel.md)
- [HelpTextModelLinks](doc//HelpTextModelLinks.md)
- [HelpTextModelLinksAddAttachment](doc//HelpTextModelLinksAddAttachment.md)
- [HelpTextModelLinksAttachments](doc//HelpTextModelLinksAttachments.md)
- [HelpTextModelLinksEditText](doc//HelpTextModelLinksEditText.md)
- [HelpTextModelLinksSelf](doc//HelpTextModelLinksSelf.md)
- [Link](doc//Link.md)
- [NewsModel](doc//NewsModel.md)
- [NewsModelLinks](doc//NewsModelLinks.md)
- [NewsModelLinksAuthor](doc//NewsModelLinksAuthor.md)
- [NewsModelLinksProject](doc//NewsModelLinksProject.md)
- [NewsModelLinksSelf](doc//NewsModelLinksSelf.md)
- [NonWorkingDayCollectionModel](doc//NonWorkingDayCollectionModel.md)
- [NonWorkingDayCollectionModelAllOfEmbedded](doc//NonWorkingDayCollectionModelAllOfEmbedded.md)
- [NonWorkingDayCollectionModelAllOfLinks](doc//NonWorkingDayCollectionModelAllOfLinks.md)
- [NonWorkingDayCollectionModelAllOfLinksSelf](doc//NonWorkingDayCollectionModelAllOfLinksSelf.md)
- [NonWorkingDayModel](doc//NonWorkingDayModel.md)
- [NonWorkingDayModelLinks](doc//NonWorkingDayModelLinks.md)
- [NonWorkingDayModelLinksSelf](doc//NonWorkingDayModelLinksSelf.md)
- [NotificationCollectionModel](doc//NotificationCollectionModel.md)
- [NotificationCollectionModelAllOfEmbedded](doc//NotificationCollectionModelAllOfEmbedded.md)
- [NotificationCollectionModelAllOfLinks](doc//NotificationCollectionModelAllOfLinks.md)
- [NotificationCollectionModelAllOfLinksChangeSize](doc//NotificationCollectionModelAllOfLinksChangeSize.md)
- [NotificationCollectionModelAllOfLinksJumpTo](doc//NotificationCollectionModelAllOfLinksJumpTo.md)
- [NotificationCollectionModelAllOfLinksSelf](doc//NotificationCollectionModelAllOfLinksSelf.md)
- [NotificationModel](doc//NotificationModel.md)
- [NotificationModelDetailsInner](doc//NotificationModelDetailsInner.md)
- [NotificationModelEmbedded](doc//NotificationModelEmbedded.md)
- [NotificationModelEmbeddedResource](doc//NotificationModelEmbeddedResource.md)
- [NotificationModelLinks](doc//NotificationModelLinks.md)
- [NotificationModelLinksActivity](doc//NotificationModelLinksActivity.md)
- [NotificationModelLinksActor](doc//NotificationModelLinksActor.md)
- [NotificationModelLinksDetailsInner](doc//NotificationModelLinksDetailsInner.md)
- [NotificationModelLinksProject](doc//NotificationModelLinksProject.md)
- [NotificationModelLinksReadIAN](doc//NotificationModelLinksReadIAN.md)
- [NotificationModelLinksResource](doc//NotificationModelLinksResource.md)
- [NotificationModelLinksSelf](doc//NotificationModelLinksSelf.md)
- [NotificationModelLinksUnreadIAN](doc//NotificationModelLinksUnreadIAN.md)
- [OAuthApplicationReadModel](doc//OAuthApplicationReadModel.md)
- [OAuthApplicationReadModelLinks](doc//OAuthApplicationReadModelLinks.md)
- [OAuthApplicationReadModelLinksIntegration](doc//OAuthApplicationReadModelLinksIntegration.md)
- [OAuthApplicationReadModelLinksOwner](doc//OAuthApplicationReadModelLinksOwner.md)
- [OAuthApplicationReadModelLinksRedirectUri](doc//OAuthApplicationReadModelLinksRedirectUri.md)
- [OAuthApplicationReadModelLinksSelf](doc//OAuthApplicationReadModelLinksSelf.md)
- [OAuthClientCredentialsReadModel](doc//OAuthClientCredentialsReadModel.md)
- [OAuthClientCredentialsReadModelLinks](doc//OAuthClientCredentialsReadModelLinks.md)
- [OAuthClientCredentialsReadModelLinksIntegration](doc//OAuthClientCredentialsReadModelLinksIntegration.md)
- [OAuthClientCredentialsReadModelLinksSelf](doc//OAuthClientCredentialsReadModelLinksSelf.md)
- [OAuthClientCredentialsWriteModel](doc//OAuthClientCredentialsWriteModel.md)
- [PaginatedCollectionModel](doc//PaginatedCollectionModel.md)
- [PaginatedCollectionModelAllOfLinks](doc//PaginatedCollectionModelAllOfLinks.md)
- [PaginatedCollectionModelAllOfLinksChangeSize](doc//PaginatedCollectionModelAllOfLinksChangeSize.md)
- [PaginatedCollectionModelAllOfLinksJumpTo](doc//PaginatedCollectionModelAllOfLinksJumpTo.md)
- [PostModel](doc//PostModel.md)
- [PostModelLinks](doc//PostModelLinks.md)
- [PostModelLinksAddAttachment](doc//PostModelLinksAddAttachment.md)
- [PriorityModel](doc//PriorityModel.md)
- [PriorityModelLinks](doc//PriorityModelLinks.md)
- [PriorityModelLinksSelf](doc//PriorityModelLinksSelf.md)
- [ProjectModel](doc//ProjectModel.md)
- [ProjectModelLinks](doc//ProjectModelLinks.md)
- [ProjectModelLinksCategories](doc//ProjectModelLinksCategories.md)
- [ProjectModelLinksCreateWorkPackage](doc//ProjectModelLinksCreateWorkPackage.md)
- [ProjectModelLinksCreateWorkPackageImmediately](doc//ProjectModelLinksCreateWorkPackageImmediately.md)
- [ProjectModelLinksDelete](doc//ProjectModelLinksDelete.md)
- [ProjectModelLinksMemberships](doc//ProjectModelLinksMemberships.md)
- [ProjectModelLinksParent](doc//ProjectModelLinksParent.md)
- [ProjectModelLinksSelf](doc//ProjectModelLinksSelf.md)
- [ProjectModelLinksStatus](doc//ProjectModelLinksStatus.md)
- [ProjectModelLinksStoragesInner](doc//ProjectModelLinksStoragesInner.md)
- [ProjectModelLinksTypes](doc//ProjectModelLinksTypes.md)
- [ProjectModelLinksUpdate](doc//ProjectModelLinksUpdate.md)
- [ProjectModelLinksUpdateImmediately](doc//ProjectModelLinksUpdateImmediately.md)
- [ProjectModelLinksVersions](doc//ProjectModelLinksVersions.md)
- [ProjectModelLinksWorkPackages](doc//ProjectModelLinksWorkPackages.md)
- [ProjectModelStatusExplanation](doc//ProjectModelStatusExplanation.md)
- [ProjectStorageCollectionModel](doc//ProjectStorageCollectionModel.md)
- [ProjectStorageCollectionModelAllOfEmbedded](doc//ProjectStorageCollectionModelAllOfEmbedded.md)
- [ProjectStorageCollectionModelAllOfLinks](doc//ProjectStorageCollectionModelAllOfLinks.md)
- [ProjectStorageCollectionModelAllOfLinksSelf](doc//ProjectStorageCollectionModelAllOfLinksSelf.md)
- [ProjectStorageModel](doc//ProjectStorageModel.md)
- [ProjectStorageModelLinks](doc//ProjectStorageModelLinks.md)
- [ProjectStorageModelLinksCreator](doc//ProjectStorageModelLinksCreator.md)
- [ProjectStorageModelLinksProject](doc//ProjectStorageModelLinksProject.md)
- [ProjectStorageModelLinksProjectFolder](doc//ProjectStorageModelLinksProjectFolder.md)
- [ProjectStorageModelLinksSelf](doc//ProjectStorageModelLinksSelf.md)
- [ProjectStorageModelLinksStorage](doc//ProjectStorageModelLinksStorage.md)
- [QueryColumnModel](doc//QueryColumnModel.md)
- [QueryCreateForm](doc//QueryCreateForm.md)
- [QueryFilterInstanceSchemaModel](doc//QueryFilterInstanceSchemaModel.md)
- [QueryFilterInstanceSchemaModelLinks](doc//QueryFilterInstanceSchemaModelLinks.md)
- [QueryFilterInstanceSchemaModelLinksFilter](doc//QueryFilterInstanceSchemaModelLinksFilter.md)
- [QueryFilterInstanceSchemaModelLinksSelf](doc//QueryFilterInstanceSchemaModelLinksSelf.md)
- [QueryFilterModel](doc//QueryFilterModel.md)
- [QueryModel](doc//QueryModel.md)
- [QueryModelLinks](doc//QueryModelLinks.md)
- [QueryModelLinksStar](doc//QueryModelLinksStar.md)
- [QueryModelLinksUnstar](doc//QueryModelLinksUnstar.md)
- [QueryModelLinksUpdate](doc//QueryModelLinksUpdate.md)
- [QueryModelLinksUpdateImmediately](doc//QueryModelLinksUpdateImmediately.md)
- [QueryOperatorModel](doc//QueryOperatorModel.md)
- [QuerySortByModel](doc//QuerySortByModel.md)
- [QueryUpdateForm](doc//QueryUpdateForm.md)
- [RelationModel](doc//RelationModel.md)
- [RelationModelLinks](doc//RelationModelLinks.md)
- [RelationModelLinksDelete](doc//RelationModelLinksDelete.md)
- [RelationModelLinksFrom](doc//RelationModelLinksFrom.md)
- [RelationModelLinksSchema](doc//RelationModelLinksSchema.md)
- [RelationModelLinksSelf](doc//RelationModelLinksSelf.md)
- [RelationModelLinksTo](doc//RelationModelLinksTo.md)
- [RelationModelLinksUpdate](doc//RelationModelLinksUpdate.md)
- [RelationModelLinksUpdateImmediately](doc//RelationModelLinksUpdateImmediately.md)
- [RevisionModel](doc//RevisionModel.md)
- [RevisionModelLinks](doc//RevisionModelLinks.md)
- [RevisionModelLinksAuthor](doc//RevisionModelLinksAuthor.md)
- [RevisionModelLinksProject](doc//RevisionModelLinksProject.md)
- [RevisionModelLinksSelf](doc//RevisionModelLinksSelf.md)
- [RevisionModelLinksShowRevision](doc//RevisionModelLinksShowRevision.md)
- [RevisionModelMessage](doc//RevisionModelMessage.md)
- [RoleModel](doc//RoleModel.md)
- [RoleModelLinks](doc//RoleModelLinks.md)
- [RoleModelLinksSelf](doc//RoleModelLinksSelf.md)
- [RootModel](doc//RootModel.md)
- [RootModelLinks](doc//RootModelLinks.md)
- [RootModelLinksConfiguration](doc//RootModelLinksConfiguration.md)
- [RootModelLinksMemberships](doc//RootModelLinksMemberships.md)
- [RootModelLinksPriorities](doc//RootModelLinksPriorities.md)
- [RootModelLinksRelations](doc//RootModelLinksRelations.md)
- [RootModelLinksSelf](doc//RootModelLinksSelf.md)
- [RootModelLinksStatuses](doc//RootModelLinksStatuses.md)
- [RootModelLinksTimeEntries](doc//RootModelLinksTimeEntries.md)
- [RootModelLinksTypes](doc//RootModelLinksTypes.md)
- [RootModelLinksUser](doc//RootModelLinksUser.md)
- [RootModelLinksUserPreferences](doc//RootModelLinksUserPreferences.md)
- [RootModelLinksWorkPackages](doc//RootModelLinksWorkPackages.md)
- [SchemaModel](doc//SchemaModel.md)
- [SchemaModelLinks](doc//SchemaModelLinks.md)
- [SchemaModelLinksSelf](doc//SchemaModelLinksSelf.md)
- [ShowOrValidateFormRequest](doc//ShowOrValidateFormRequest.md)
- [StatusModel](doc//StatusModel.md)
- [StatusModelLinks](doc//StatusModelLinks.md)
- [StatusModelLinksSelf](doc//StatusModelLinksSelf.md)
- [StorageFileModel](doc//StorageFileModel.md)
- [StorageFileModelAllOfLinks](doc//StorageFileModelAllOfLinks.md)
- [StorageFileModelAllOfLinksSelf](doc//StorageFileModelAllOfLinksSelf.md)
- [StorageFileUploadLinkModel](doc//StorageFileUploadLinkModel.md)
- [StorageFileUploadLinkModelLinks](doc//StorageFileUploadLinkModelLinks.md)
- [StorageFileUploadLinkModelLinksDestination](doc//StorageFileUploadLinkModelLinksDestination.md)
- [StorageFileUploadLinkModelLinksSelf](doc//StorageFileUploadLinkModelLinksSelf.md)
- [StorageFileUploadPreparationModel](doc//StorageFileUploadPreparationModel.md)
- [StorageFilesModel](doc//StorageFilesModel.md)
- [StorageFilesModelParent](doc//StorageFilesModelParent.md)
- [StorageReadModel](doc//StorageReadModel.md)
- [StorageReadModelEmbedded](doc//StorageReadModelEmbedded.md)
- [StorageReadModelLinks](doc//StorageReadModelLinks.md)
- [StorageReadModelLinksAuthorizationState](doc//StorageReadModelLinksAuthorizationState.md)
- [StorageReadModelLinksAuthorize](doc//StorageReadModelLinksAuthorize.md)
- [StorageReadModelLinksOauthApplication](doc//StorageReadModelLinksOauthApplication.md)
- [StorageReadModelLinksOauthClientCredentials](doc//StorageReadModelLinksOauthClientCredentials.md)
- [StorageReadModelLinksOpen](doc//StorageReadModelLinksOpen.md)
- [StorageReadModelLinksOrigin](doc//StorageReadModelLinksOrigin.md)
- [StorageReadModelLinksSelf](doc//StorageReadModelLinksSelf.md)
- [StorageReadModelLinksType](doc//StorageReadModelLinksType.md)
- [StorageWriteModel](doc//StorageWriteModel.md)
- [StorageWriteModelLinks](doc//StorageWriteModelLinks.md)
- [StorageWriteModelLinksOrigin](doc//StorageWriteModelLinksOrigin.md)
- [StorageWriteModelLinksType](doc//StorageWriteModelLinksType.md)
- [TimeEntryActivityModel](doc//TimeEntryActivityModel.md)
- [TimeEntryActivityModelEmbedded](doc//TimeEntryActivityModelEmbedded.md)
- [TimeEntryActivityModelLinks](doc//TimeEntryActivityModelLinks.md)
- [TimeEntryActivityModelLinksSelf](doc//TimeEntryActivityModelLinksSelf.md)
- [TimeEntryCollectionModel](doc//TimeEntryCollectionModel.md)
- [TimeEntryCollectionModelAllOfEmbedded](doc//TimeEntryCollectionModelAllOfEmbedded.md)
- [TimeEntryCollectionModelAllOfLinks](doc//TimeEntryCollectionModelAllOfLinks.md)
- [TimeEntryCollectionModelAllOfLinksSelf](doc//TimeEntryCollectionModelAllOfLinksSelf.md)
- [TimeEntryModel](doc//TimeEntryModel.md)
- [TimeEntryModelComment](doc//TimeEntryModelComment.md)
- [TimeEntryModelLinks](doc//TimeEntryModelLinks.md)
- [TimeEntryModelLinksActivity](doc//TimeEntryModelLinksActivity.md)
- [TimeEntryModelLinksDelete](doc//TimeEntryModelLinksDelete.md)
- [TimeEntryModelLinksProject](doc//TimeEntryModelLinksProject.md)
- [TimeEntryModelLinksSchema](doc//TimeEntryModelLinksSchema.md)
- [TimeEntryModelLinksSelf](doc//TimeEntryModelLinksSelf.md)
- [TimeEntryModelLinksUpdate](doc//TimeEntryModelLinksUpdate.md)
- [TimeEntryModelLinksUpdateImmediately](doc//TimeEntryModelLinksUpdateImmediately.md)
- [TimeEntryModelLinksUser](doc//TimeEntryModelLinksUser.md)
- [TimeEntryModelLinksWorkPackage](doc//TimeEntryModelLinksWorkPackage.md)
- [TypeModel](doc//TypeModel.md)
- [TypeModelLinks](doc//TypeModelLinks.md)
- [TypeModelLinksSelf](doc//TypeModelLinksSelf.md)
- [UpdateActivityRequest](doc//UpdateActivityRequest.md)
- [UpdateActivityRequestComment](doc//UpdateActivityRequestComment.md)
- [UpdateUserPreferencesRequest](doc//UpdateUserPreferencesRequest.md)
- [UserCollectionModel](doc//UserCollectionModel.md)
- [UserCollectionModelAllOfEmbedded](doc//UserCollectionModelAllOfEmbedded.md)
- [UserCollectionModelAllOfLinks](doc//UserCollectionModelAllOfLinks.md)
- [UserCollectionModelAllOfLinksSelf](doc//UserCollectionModelAllOfLinksSelf.md)
- [UserCreateModel](doc//UserCreateModel.md)
- [UserModel](doc//UserModel.md)
- [UserModelLinks](doc//UserModelLinks.md)
- [UserModelLinksDelete](doc//UserModelLinksDelete.md)
- [UserModelLinksLock](doc//UserModelLinksLock.md)
- [UserModelLinksMemberships](doc//UserModelLinksMemberships.md)
- [UserModelLinksSelf](doc//UserModelLinksSelf.md)
- [UserModelLinksShowUser](doc//UserModelLinksShowUser.md)
- [UserModelLinksUnlock](doc//UserModelLinksUnlock.md)
- [UserModelLinksUpdateImmediately](doc//UserModelLinksUpdateImmediately.md)
- [ValuesPropertyModel](doc//ValuesPropertyModel.md)
- [ValuesPropertyModelLinks](doc//ValuesPropertyModelLinks.md)
- [ValuesPropertyModelLinksSchema](doc//ValuesPropertyModelLinksSchema.md)
- [ValuesPropertyModelLinksSelf](doc//ValuesPropertyModelLinksSelf.md)
- [VersionModel](doc//VersionModel.md)
- [VersionModelLinks](doc//VersionModelLinks.md)
- [VersionModelLinksAvailableInProjects](doc//VersionModelLinksAvailableInProjects.md)
- [VersionModelLinksDefiningProject](doc//VersionModelLinksDefiningProject.md)
- [VersionModelLinksSelf](doc//VersionModelLinksSelf.md)
- [VersionModelLinksUpdate](doc//VersionModelLinksUpdate.md)
- [VersionModelLinksUpdateImmediately](doc//VersionModelLinksUpdateImmediately.md)
- [WatchersModel](doc//WatchersModel.md)
- [WatchersModelAllOfEmbedded](doc//WatchersModelAllOfEmbedded.md)
- [WatchersModelAllOfLinks](doc//WatchersModelAllOfLinks.md)
- [WatchersModelAllOfLinksSelf](doc//WatchersModelAllOfLinksSelf.md)
- [WeekDayCollectionModel](doc//WeekDayCollectionModel.md)
- [WeekDayCollectionModelAllOfEmbedded](doc//WeekDayCollectionModelAllOfEmbedded.md)
- [WeekDayCollectionModelAllOfLinks](doc//WeekDayCollectionModelAllOfLinks.md)
- [WeekDayCollectionModelAllOfLinksSelf](doc//WeekDayCollectionModelAllOfLinksSelf.md)
- [WeekDayCollectionWriteModel](doc//WeekDayCollectionWriteModel.md)
- [WeekDayCollectionWriteModelEmbedded](doc//WeekDayCollectionWriteModelEmbedded.md)
- [WeekDayModel](doc//WeekDayModel.md)
- [WeekDaySelfLinkModel](doc//WeekDaySelfLinkModel.md)
- [WeekDaySelfLinkModelSelf](doc//WeekDaySelfLinkModelSelf.md)
- [WeekDayWriteModel](doc//WeekDayWriteModel.md)
- [WikiPageModel](doc//WikiPageModel.md)
- [WikiPageModelLinks](doc//WikiPageModelLinks.md)
- [WikiPageModelLinksAddAttachment](doc//WikiPageModelLinksAddAttachment.md)
- [WorkPackageModel](doc//WorkPackageModel.md)
- [WorkPackageModelDescription](doc//WorkPackageModelDescription.md)
- [WorkPackageModelLinks](doc//WorkPackageModelLinks.md)
- [WorkPackageModelLinksAddAttachment](doc//WorkPackageModelLinksAddAttachment.md)
- [WorkPackageModelLinksAddComment](doc//WorkPackageModelLinksAddComment.md)
- [WorkPackageModelLinksAddFileLink](doc//WorkPackageModelLinksAddFileLink.md)
- [WorkPackageModelLinksAddRelation](doc//WorkPackageModelLinksAddRelation.md)
- [WorkPackageModelLinksAddWatcher](doc//WorkPackageModelLinksAddWatcher.md)
- [WorkPackageModelLinksAssignee](doc//WorkPackageModelLinksAssignee.md)
- [WorkPackageModelLinksAttachments](doc//WorkPackageModelLinksAttachments.md)
- [WorkPackageModelLinksAuthor](doc//WorkPackageModelLinksAuthor.md)
- [WorkPackageModelLinksAvailableWatchers](doc//WorkPackageModelLinksAvailableWatchers.md)
- [WorkPackageModelLinksBudget](doc//WorkPackageModelLinksBudget.md)
- [WorkPackageModelLinksCategory](doc//WorkPackageModelLinksCategory.md)
- [WorkPackageModelLinksFileLinks](doc//WorkPackageModelLinksFileLinks.md)
- [WorkPackageModelLinksParent](doc//WorkPackageModelLinksParent.md)
- [WorkPackageModelLinksPreviewMarkup](doc//WorkPackageModelLinksPreviewMarkup.md)
- [WorkPackageModelLinksPriority](doc//WorkPackageModelLinksPriority.md)
- [WorkPackageModelLinksProject](doc//WorkPackageModelLinksProject.md)
- [WorkPackageModelLinksRelations](doc//WorkPackageModelLinksRelations.md)
- [WorkPackageModelLinksRemoveWatcher](doc//WorkPackageModelLinksRemoveWatcher.md)
- [WorkPackageModelLinksResponsible](doc//WorkPackageModelLinksResponsible.md)
- [WorkPackageModelLinksRevisions](doc//WorkPackageModelLinksRevisions.md)
- [WorkPackageModelLinksSchema](doc//WorkPackageModelLinksSchema.md)
- [WorkPackageModelLinksSelf](doc//WorkPackageModelLinksSelf.md)
- [WorkPackageModelLinksStatus](doc//WorkPackageModelLinksStatus.md)
- [WorkPackageModelLinksTimeEntries](doc//WorkPackageModelLinksTimeEntries.md)
- [WorkPackageModelLinksType](doc//WorkPackageModelLinksType.md)
- [WorkPackageModelLinksUnwatch](doc//WorkPackageModelLinksUnwatch.md)
- [WorkPackageModelLinksUpdate](doc//WorkPackageModelLinksUpdate.md)
- [WorkPackageModelLinksUpdateImmediately](doc//WorkPackageModelLinksUpdateImmediately.md)
- [WorkPackageModelLinksVersion](doc//WorkPackageModelLinksVersion.md)
- [WorkPackageModelLinksWatch](doc//WorkPackageModelLinksWatch.md)
- [WorkPackageModelLinksWatchers](doc//WorkPackageModelLinksWatchers.md)
- [WorkPackagePatchModel](doc//WorkPackagePatchModel.md)
- [WorkPackagePatchModelLinks](doc//WorkPackagePatchModelLinks.md)
- [WorkPackagesModel](doc//WorkPackagesModel.md)
- [WorkPackagesModelAllOfEmbedded](doc//WorkPackagesModelAllOfEmbedded.md)
- [WorkPackagesModelAllOfLinks](doc//WorkPackagesModelAllOfLinks.md)
- [WorkPackagesModelAllOfLinksSelf](doc//WorkPackagesModelAllOfLinksSelf.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### BasicAuth

- **Type**: HTTP Basic authentication

## Author
