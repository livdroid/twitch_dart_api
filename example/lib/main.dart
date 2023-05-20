import 'package:flutter/material.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:url_launcher/url_launcher.dart';

/// Add you own redirection URL and ClientId
/// Here I use --dart-define=REDIRECTION=<URL> and else as a run argument
final twitchInterface = TwitchInterface(
    redirectionURL: const String.fromEnvironment('REDIRECTION'),
    clientId: const String.fromEnvironment('ID'));

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
              onPressed: () async {
                final uri = twitchInterface.getConnectionUrl(
                    scopes: TwitchApiScopes.allScopes);
                //launch webview and retrieve redirection url with whatever way you prefer
                await launchUrl(uri);
              },
              child: const Text('Launch auth url')),
          TextButton(
              onPressed: () async {
                // Call init with the url retrieved after redirection
                await twitchInterface.init(
                    url: const String.fromEnvironment('URL'));
              },
              child: const Text('Parse Url and init library')),
          TextButton(
              onPressed: () async {
                // Call init with the url retrieved after redirection
                final response = await twitchInterface.raid.startRaid(
                    props: RaidProps(
                        fromBroadcasterId: twitchInterface.userId,
                        toBroadcasterId: '123'));
              },
              child: const Text('Raid a channel')),
          TextButton(
              onPressed: () async {
                final stream = await twitchInterface.event.subscribeTo(
                    type: TwitchSubscriptionType.channelUpdate,
                    userId: twitchInterface.userId);
                stream.listen((event) {
                  print(event.runtimeType);
                  if (event.runtimeType == WSEventResponse) {
                    /// usually a connection status
                  } else if (event.runtimeType == SubscriptionEvent) {
                    /// an actual event you sub to
                    final ev = event as SubscriptionEvent;
                    print('event received ${ev.subscriptionType}');
                    print('event received ${ev.event?.title}');
                  }
                });
              },
              child: const Text('WebSocket')),
          TextButton(
            child: const Text('getFollowedStreams'),
            onPressed: () async {
              final data = await twitchInterface.streamsRepository
                  .getFollowedStreams(
                      props: GetFollowedStreamsProps(
                          userId: twitchInterface.userId));
              data.fold(
                  (l) => print(l.exception),
                  (r) => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 2,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Text(
                                    r.data?[index].toString() ?? 'no name');
                              },
                              itemCount: r.data?.length ?? 0),
                        ));
                      }));
            },
          )
        ],
      ),
    );
  }
}
