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

### 🚧 Work in Progress 🚧
<em>
📝 PS: Event subs are still a work in progress.
</em>

# Twitch Client 🎮🎙

Twitch Client is a package that allows you to connect with the Twitch API and
interact with data like Bits, Channels, Chats, Games, and Moderation.
You can find the Twitch API documentation [here](https://dev.twitch.tv/docs/api).

# Features

## Getting started

Register an app here : <https://dev.twitch.tv/console>
The redirection URL and the client id are needed to connect with the API.

## Usage

Create a TwitchInterface object.

```dart
var twitchInterface = TwitchInterface(
    redirectionURL: 'url',
    clientid: 'clientID';
```

Retrieve the URL you will use in a webview to let the user connect with its account.
The method getConnectionUrl must have a list of scopes, all scopes are available
in the library.

````dart
final uri = twitchInterface.getConnectionUrl(
              scopes: TwitchApiScopes.allScopes);
````

Once the connection is done, the redirection URL will contain the user access token.
Something like:
Give the URL that was returned after using logged in to the package and it will
parse the URL to keep the access token and add it to the TwitchInterface, this information is not kept across sessions, you will have to do this logic yourself.

```dart
twitchInterface.init(url: 'url');
```

## Additional information

⚠️ IMPORTANT: Verify token ⚠️

As per twitch documentation, you should validate the access token every hour,
they can audit your app and ask you to resolve the issue if you don't do it.
More here: <https://dev.twitch.tv/docs/authentication/validate-tokens#who-must-validate-tokens>

Please call validateToken() to do this request.

## Available requests so far :

- Start Commercial
- Get Extension Analytics
- Get Game Analytics
- Get Bits Leaderboard
- Get Cheermotes
- Get Channel Information
- Modify Channel Information
- Get Channel Editors
- Get Followed Channels
- Get Channel Followers
- Get Chatters
- Get Chat Settings
- Update Chat Settings
- Ban User
- Unban User
- Get Moderators
- Add Channel Moderator
- Remove Channel Moderator
- Get VIPs
- Add Channel VIP
- Remove Channel VIP
- Get Polls
- Create Poll
- End Poll
- Get Predictions
- Create Prediction
- End Prediction
- Get Users
- Update User
- Get Users Follows
- Get User Block List
- Block User
- Unblock User
- Get Videos
- Delete Videos
- Create Custom Rewards
- Delete Custom Rewards
- Get Custom Rewards
- Get Custom Reward Redemptions
- Update Custom Reward
- Update Custom Reward Redemption
- Get Streams 
- Get Followed Streams
- Get Stream Key
- Send Chat Announcement
- Add Blocked Terms
- Get Blocked Terms
- Remove Blocked Terms
- Create Clip
- Get Clip
- Get AutoMod Settings
- Update AutoMod Settings
- Get Broadcaster Subscriptions