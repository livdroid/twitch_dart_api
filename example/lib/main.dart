import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:url_launcher/url_launcher.dart';

/// Add you own redirection URL and ClientId
final twitchInterface = TwitchInterface(
    redirectionURL: const String.fromEnvironment('REDIRECTION'),
    clientId: const String.fromEnvironment('ID'));

void main() {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
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
                final isInit = twitchInterface.init(
                    url: const String.fromEnvironment('URL'));
              },
              child: const Text('Parse Url and init library')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.bits
                    .getBitsLeaderBoard(props: const BitsLeaderBoardProps(count: 50));
                data.fold(
                    (l) => print(l),
                    (r) => showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              content: SizedBox(
                                height:MediaQuery.of(context).size.height/2,
                                width:MediaQuery.of(context).size.width/2,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Text(r.data?[index].userName ?? 'no name');
                                    },
                                    itemCount: r.total),
                              ));
                        }));
              },
              child: const Text('Get bits leaderboard')),
        ],
      ),
    );
  }
}
