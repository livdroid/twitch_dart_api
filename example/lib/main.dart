import 'package:flutter/material.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:url_launcher/url_launcher.dart';

var twitchInterface = TwitchInterface(
    redirectionURL: const String.fromEnvironment('REDIRECTION'),
    showRequestLogs: true,
    clientId: const String.fromEnvironment('ID'));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(true),
    );
  }
}

class MyHomePage extends StatefulWidget {
  bool isConnected;

  MyHomePage(this.isConnected, {super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
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
              twitchInterface.init(
                  url: const String.fromEnvironment('URL'));
            },
            child: const Text('Parse Url and init library')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.bitsInterface
                    ?.getBitsLeaderBoard(props: const BitsLeaderBoardProps());
                data?.fold((l) => print(l), (r) => print(r.data));
              },
              child: const Text('Get bits leaderboard')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.bitsInterface
                    ?.getCheermotes(props: const CheermotesProps(broadcasterId: ''));
                data?.fold((l) => print(l), (r) => print(r.data));
              },
              child: const Text('Get Cheermotes')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.channelInterface
                    ?.getChannelInformation(
                        props: const BroadcasterProps(broadcasterId: '141981764'));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data.first.broadcasterName));
              },
              child: const Text('Get Channel Info')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.channelInterface
                    ?.modifyChannelInformation(
                        broadcasterProps:
                            const BroadcasterProps(broadcasterId: '59408155'),
                        modifyChannelInformationProps:
                            ModifyChannelInformationProp(
                                title: "Test",
                                broadcasterLanguage: 'fr'));
                data?.fold((l) => print(l.exception), (r) => print('Done'));
              },
              child: const Text('Modify Channel Info')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.channelInterface
                    ?.getChannelEditors(
                        broadcasterProps:
                            const BroadcasterProps(broadcasterId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print('OK'));
              },
              child: const Text('Get Channel editors')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.chatInterface?.getChatters(
                    props: const ChattersProps(
                        broadcasterId: '59408155', moderatorId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print(r.data));
              },
              child: const Text('Get chatters')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.chatInterface
                    ?.getChatSettings(
                        props: const BroadcasterProps(broadcasterId: '59408155'));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first.followerMode));
              },
              child: const Text('Get chat settings')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.chatInterface
                    ?.updateChatSettings(
                        props: const BroadcasterModeratorProps(
                            broadcasterId: '59408155', moderatorId: '59408155'),
                        chatProps: const ChatModifyProps(slowMode: true));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first?.slowMode));
              },
              child: const Text('Update chat settings')),
          TextButton(
              onPressed: () async {
                final data = await twitchInterface.moderationInterface
                    ?.getBannedUsers(
                        props: const BroadcasterProps(broadcasterId: '59408155'));
                data?.fold(
                    (l) => print(l.exception), (r) => print(r.data?.length));
              },
              child: const Text('Get banned users')),
          TextButton(
              onPressed: () async {
                final stream = await twitchInterface.eventSubInterface
                    ?.subscribeTo(
                        type: TwitchSubscriptionType.streamOnline,
                        userId: '59408155');

                stream?.listen((event) {
                  //print(event.toJson());
                });
              },
              child: const Text('Create eventsubs subscription')),
          TextButton(
              child: const Text('Get eventsub subscriptions'),
              onPressed: () async {
                final data = await twitchInterface.eventSubInterface
                    ?.getEventSubSubscriptions(props: GetEventSubProps());
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first?.status ?? ''));
              }),
          TextButton(
              child: const Text('Disconnect to all eventsub subscriptions'),
              onPressed: () async {
                final data = await twitchInterface.eventSubInterface
                    ?.getEventSubSubscriptions(props: GetEventSubProps());
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first?.status ?? 'none'));

                data?.asRight().data?.forEach((element) async {
                  await twitchInterface.eventSubInterface
                      ?.deleteEventSubSubscriptions(
                          props: GetEventSubProps(id: element.id));
                });
              }),
          TextButton(
              child: const Text('Revoke token'),
              onPressed: () async {
                final data = await twitchInterface.tokenInterface
                    ?.revokeAccessToken(
                        props: TokenClientProps(
                            token: twitchInterface.accessToken ?? '',
                            clientId: twitchInterface.clientId ?? ''));
                data?.fold((l) => print(l.exception), (r) => print('true'));

                setState(() {
                  isConnected = false;
                });
              }),
          TextButton(
              child: const Text('Validate token'),
              onPressed: () async {
                final data =
                    await twitchInterface.tokenInterface?.verifyToken();
                data?.fold(
                    (l) => print(l.exception), (r) => print(r.expiresIn));
              }),
          TextButton(
              child: const Text('Start commercial'),
              onPressed: () async {
                final data = await twitchInterface.channelInterface
                    ?.startCommercial(
                        startCommercialProps: const StartCommercialProps(
                            broadcasterId: '59408155', length: 60));

                data?.fold((l) => print(l.exception), (r) => print(r));
              }),
          TextButton(
              child: const Text('get vips'),
              onPressed: () async {
                final data = await twitchInterface.channelInterface?.getVIPs(
                    props: const BroadcasterProps(broadcasterId: '59408155'));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first.userName));
              }),
          TextButton(
              child: const Text('add vip'),
              onPressed: () async {
                final data = await twitchInterface.channelInterface?.addVip(
                    props: const AddVipProps(
                        broadcasterId: '59408155', userId: '36584091'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('remove vip'),
              onPressed: () async {
                final data = await twitchInterface.channelInterface?.removeVip(
                    props: const RemoveVipProps(
                        broadcasterId: '59408155', userId: '36584091'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('get blocked user list'),
              onPressed: () async {
                final data = await twitchInterface.userInterface?.getBlockList(
                    props: const UserBlockListProps(broadcasterId: '59408155'));
                data?.fold(
                    (l) => print(l.exception), (r) => print(r.data?.length));
              }),
          TextButton(
              child: const Text('Block user'),
              onPressed: () async {
                final data = await twitchInterface.userInterface?.blockUser(
                    props: const BlockUserProps(targetUserId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('unblock user'),
              onPressed: () async {
                final data = await twitchInterface.userInterface?.unblockUser(
                    props: const BlockUserProps(targetUserId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Get video'),
              onPressed: () async {
                final data = await twitchInterface.videoRepository
                    ?.getVideo(props: const VideoProps(gameId: '23442'));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first.description));
              }),
          TextButton(
              child: const Text('Delete video'),
              onPressed: () async {
                final data = await twitchInterface.videoRepository
                    ?.deleteVideo(props: VideoProps(id: '123'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Analytics game'),
              onPressed: () async {
                final data = await twitchInterface.analyticsRepository
                    ?.getGameAnalytics(
                        props: GameAnalyticsProps(gameId: "1244"));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Analytics extension'),
              onPressed: () async {
                final data = await twitchInterface.analyticsRepository
                    ?.getExtensionAnalytics(props: ExtensionAnalyticsProps());
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Get polls'),
              onPressed: () async {
                final data = await twitchInterface.pollsRepository
                    ?.getPolls(props: PollsProps(broadcasterId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Create polls'),
              onPressed: () async {
                final data = await twitchInterface.pollsRepository?.createPoll(
                    props: CreatePollProps(
                        broadcasterId: '59408155',
                        title: "Le petit dej c'est mieux ...",
                        choices: [
                          Choices(title: 'Sucré'),
                          Choices(title: 'Salé'),
                        ],
                        channelPointsPerVote: 1,
                        channelPointsVotingEnabled: true,
                        duration: 60));
                data?.fold((l) => print(l.exception),
                    (r) => print(r.data?.first.id ?? 'nothing'));
              }),
          TextButton(
              child: const Text('Stop poll'),
              onPressed: () async {
                final data = await twitchInterface.pollsRepository?.endPoll(
                    props: EndPollProps(
                  broadcasterId: '59408155',
                  id: "8d386bd6-dca7-4b28-9561-62c9c76246c9",
                  status: EndPollStatus.TERMINATED.name,
                ));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Get predictions'),
              onPressed: () async {
                final data = await twitchInterface.predictionRepository
                    ?.getPredictions(
                        props: const PredictionsProps(broadcasterId: '59408155'));
                data?.fold((l) => print(l.exception), (r) => print('ok'));
              }),
          TextButton(
              child: const Text('Create prediction'),
              onPressed: () async {
                final data = await twitchInterface.predictionRepository
                    ?.createPrediction(
                        props: CreatePredictionsProps(
                  broadcasterId: '59408155',
                  title: 'Test de prediction',
                  outcomes: [
                    Outcomes(title: 'Oui'),
                    Outcomes(title: 'Non'),
                  ],
                  predictionWindow: 60,
                ));
              }),
          TextButton(
              child: const Text('End prediction'),
              onPressed: () async {
                final data = await twitchInterface.predictionRepository
                    ?.endPrediction(
                        props: EndPredictionProps(
                            broadcasterId: '59408155',
                            id: 'af3612d2-2676-4f3a-adca-538e05f74e7f',
                            status: EndPredictionStatus.CANCELED.name));
              }),
          TextButton(
              child: const Text('Get moderators'),
              onPressed: () async {
                final data = await twitchInterface.moderationInterface
                    ?.getModerators(
                    props: const BroadcasterProps(broadcasterId: '59408155'));
              }),
          TextButton(
              child: const Text('Add moderators'),
              onPressed: () async {
                final data = await twitchInterface.moderationInterface
                    ?.addModerator(
                    props: const AddModeratorProps(broadcasterId: '59408155', userId: '59408155'));
              }),
          TextButton(
              child: const Text('Remove moderators'),
              onPressed: () async {
                final data = await twitchInterface.moderationInterface
                    ?.removeModerator(
                    props: const RemoveModeratorProps(broadcasterId: '59408155', userId: '59408155'));
              })
        ]
    ));
  }
}
