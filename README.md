<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Twitch Client is a package that allows you to connect with the Twitch API and 
interact with data like Bits, Channels, Chats, Games, Moderation ...

Twitch API documentation : https://dev.twitch.tv/docs/api

## Features


## Getting started

Register an app here : https://dev.twitch.tv/console

The redirection URL and the client id are needed to connect with the API.

## Usage

Create a TwitchInterface object.

```dart
var twitchInterface = TwitchInterface(
    redirectionURL: 'url',
    clientid: 'clientID';
```

Retrieve the URL you will use in a webview to let the user connect with its account.
The methode getConnectionUrl must have a list of scopes, all scopes are available 
in the library.

````dart
final uri = twitchInterface.getConnectionUrl(
              scopes: TwitchApiScopes.allScopes);
````

Once the connection is done, the redirection url will contain the user access token.
Something like : 

````dart
<redirection_url_you_gave>#access_token=<access_token>&scope=analytics%3Aread%3Aextensions&token_type=bearer')
````

Parse the URL to keep the access token and add it to the TwitchInterface.

````dart
twitchInterface.twitchInterface.accessToken = 'token';
````

If you want to print the requests for debug purpose :

````dart
twitchInterface.debugMode = true;
````

## Additional information

### IMPORTANT : Verify token
As per twitch documentation you should validate the access token every hour, 
they can audit your add and ask you to resolve the issue if you don't do it.
More here : 
https://dev.twitch.tv/docs/authentication/validate-tokens#who-must-validate-tokens

Please call verifyToken() to do this request.# twitch_dart_api
