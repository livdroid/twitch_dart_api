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

### Be careful this package is a work in progress :)
<em>
This project might encounter breaking changes while i still work on it, that's why is not yet released on pub.dev
It will be once all unit tests are done and architecture is finished.

Do not use event subs yet there's work to be done there still :)
</em>

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

Give the url that was returned after used logged in to the package and it will 
parse the URL to keep the access token and add it to the TwitchInterface, this information is
not keeped across sessions, you will have to do this logic yourself.

```dart
twitchInterface.init(url: 'url');
```

If you want to print the requests for debug purpose while you initialize the Twitch interface object :

````dart
 showRequestLogs: true
 ````

## Additional information

### IMPORTANT : Verify token
As per twitch documentation you should validate the access token every hour, 
they can audit your add and ask you to resolve the issue if you don't do it.
More here : 
https://dev.twitch.tv/docs/authentication/validate-tokens#who-must-validate-tokens

Please call validateToken() to do this request.
