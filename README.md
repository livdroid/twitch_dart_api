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

### This package is a work in progress and doesn't have everything implemented yet but it will be updated regularly.

<em>
PS : Event subs are still a work in progress.

PSS : This is my first library ever, any kind advice/criticism is very welcome :)
</em>

Twitch Client is a package that allows you to connect with the Twitch API and
interact with data like Bits, Channels, Chats, Games, and Moderation ...
Twitch API documentation: <https://dev.twitch.tv/docs/api>>

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

IMPORTANT: Verify token

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

## To Implement

- Get Extension Transactions
- Create Custom Rewards
- Delete Custom Reward
- Get Custom Reward
- Get Custom Reward
- Redemption
- Update Custom Reward
- Update Redemption Status
- Get Charity Campaign
- Get Charity Campaign
- Donations
- Get Channel Emotes
- Get Global Emotes
- Get Emote Sets
- Get Channel Chat Badges
- Get Global Chat Badges
- Send Chat Announcement
- Send a Shoutout
- Get User Chat Color
- Update User Chat Color
- Create Clip
- Get Clips
- Get Drops Entitlements
- Update Drops Entitlements
- Get Extension Configuration
- Segment
- Set Extension Configuration
- Segment
- Set Extension Required
- Configuration
- Send Extension PubSub
- Message
- Get Extension Live Channels
- Get Extension Secrets
- Create Extension Secret
- Send Extension Chat
- Message
- Get Extensions
- Get Released Extensions
- Get Extension Bits Products
- Update Extension Bits
- Product
- Create EventSub
- Subscription
- Delete EventSub
- Subscription
- Get EventSub Subscriptions
- Get Top Games
- Get Games
- Get Creator Goals
- Get Hype Train Events
- Check AutoMod Status
- Manage Held AutoMod
- Messages
- Get AutoMod Settings
- Update AutoMod Settings
- Get Banned Users
- Get Blocked Terms
- Add Blocked Term
- Remove Blocked Term
- Delete Chat Messages
- Start a raid
- Cancel a raid
- Get Channel Stream
- Schedule
- Get Channel Calendar
- Update Channel Stream
- Schedule
- Create Channel Stream
- Schedule Segment
- Update Channel Stream
- Schedule Segment
- Delete Channel Stream
- Schedule Segment
- Search Categories
- Search Channels
- Get Soundtrack Current
- Track
- Get Soundtrack Playlist
- Get Soundtrack Playlists
- Get Stream Key
- Get Streams
- Get Followed Streams
- Create Stream Marker
- Get Stream Markers
- Get Broadcaster
- Subscriptions
- Check User Subscription
- Get All Stream Tags
- Get Stream Tags
- Get Channel Teams
- Get Teams
- Send Whisper