// Mocks generated by Mockito 5.3.2 from annotations
// in twitch_client/test/src/interface/twitch_interface_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i19;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:twitch_client/src/error/failure.dart' as _i20;
import 'package:twitch_client/src/interface/analytics_repository.dart' as _i11;
import 'package:twitch_client/src/interface/bits_repository.dart' as _i4;
import 'package:twitch_client/src/interface/channel_points_respository.dart'
    as _i15;
import 'package:twitch_client/src/interface/channel_repository.dart' as _i5;
import 'package:twitch_client/src/interface/chat_repository.dart' as _i6;
import 'package:twitch_client/src/interface/clip_repository.dart' as _i17;
import 'package:twitch_client/src/interface/event_sub_repository.dart' as _i14;
import 'package:twitch_client/src/interface/moderation_repository.dart' as _i7;
import 'package:twitch_client/src/interface/polls_repository.dart' as _i12;
import 'package:twitch_client/src/interface/predictions_repository.dart'
    as _i13;
import 'package:twitch_client/src/interface/stream_repository.dart' as _i16;
import 'package:twitch_client/src/interface/subscription_repository.dart'
    as _i18;
import 'package:twitch_client/src/interface/token_repository.dart' as _i8;
import 'package:twitch_client/src/interface/twitch_repositories.dart' as _i3;
import 'package:twitch_client/src/interface/user_repository.dart' as _i9;
import 'package:twitch_client/src/interface/video_repository.dart' as _i10;
import 'package:twitch_client/src/props/token_client_props.dart' as _i21;
import 'package:twitch_client/src/response/validate_token_response.dart'
    as _i22;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTwitchRepositories_1 extends _i1.SmartFake
    implements _i3.TwitchRepositories {
  _FakeTwitchRepositories_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBitsInterface_2 extends _i1.SmartFake implements _i4.BitsInterface {
  _FakeBitsInterface_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChannelInterface_3 extends _i1.SmartFake
    implements _i5.ChannelInterface {
  _FakeChannelInterface_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChatInterface_4 extends _i1.SmartFake implements _i6.ChatInterface {
  _FakeChatInterface_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeModerationInterface_5 extends _i1.SmartFake
    implements _i7.ModerationInterface {
  _FakeModerationInterface_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTokenInterface_6 extends _i1.SmartFake
    implements _i8.TokenInterface {
  _FakeTokenInterface_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserInterface_7 extends _i1.SmartFake implements _i9.UserInterface {
  _FakeUserInterface_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVideoRepository_8 extends _i1.SmartFake
    implements _i10.VideoRepository {
  _FakeVideoRepository_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAnalyticsRepository_9 extends _i1.SmartFake
    implements _i11.AnalyticsRepository {
  _FakeAnalyticsRepository_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePollsRepository_10 extends _i1.SmartFake
    implements _i12.PollsRepository {
  _FakePollsRepository_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePredictionRepository_11 extends _i1.SmartFake
    implements _i13.PredictionRepository {
  _FakePredictionRepository_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEventSubInterface_12 extends _i1.SmartFake
    implements _i14.EventSubInterface {
  _FakeEventSubInterface_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChannelPointsRepository_13 extends _i1.SmartFake
    implements _i15.ChannelPointsRepository {
  _FakeChannelPointsRepository_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamsRepository_14 extends _i1.SmartFake
    implements _i16.StreamsRepository {
  _FakeStreamsRepository_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClipRepository_15 extends _i1.SmartFake
    implements _i17.ClipRepository {
  _FakeClipRepository_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSubscriptionRepository_16 extends _i1.SmartFake
    implements _i18.SubscriptionRepository {
  _FakeSubscriptionRepository_16(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TokenInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockTokenInterface extends _i1.Mock implements _i8.TokenInterface {
  @override
  _i19.Future<_i2.Either<_i20.Failure, bool>> revokeAccessToken(
          {required _i21.TokenClientProps? props}) =>
      (super.noSuchMethod(
        Invocation.method(
          #revokeAccessToken,
          [],
          {#props: props},
        ),
        returnValue: _i19.Future<_i2.Either<_i20.Failure, bool>>.value(
            _FakeEither_0<_i20.Failure, bool>(
          this,
          Invocation.method(
            #revokeAccessToken,
            [],
            {#props: props},
          ),
        )),
        returnValueForMissingStub:
            _i19.Future<_i2.Either<_i20.Failure, bool>>.value(
                _FakeEither_0<_i20.Failure, bool>(
          this,
          Invocation.method(
            #revokeAccessToken,
            [],
            {#props: props},
          ),
        )),
      ) as _i19.Future<_i2.Either<_i20.Failure, bool>>);
  @override
  _i19.Future<_i2.Either<_i20.Failure, _i22.ValidateTokenResponse>>
      verifyToken() => (super.noSuchMethod(
            Invocation.method(
              #verifyToken,
              [],
            ),
            returnValue: _i19.Future<
                    _i2.Either<_i20.Failure, _i22.ValidateTokenResponse>>.value(
                _FakeEither_0<_i20.Failure, _i22.ValidateTokenResponse>(
              this,
              Invocation.method(
                #verifyToken,
                [],
              ),
            )),
            returnValueForMissingStub: _i19.Future<
                    _i2.Either<_i20.Failure, _i22.ValidateTokenResponse>>.value(
                _FakeEither_0<_i20.Failure, _i22.ValidateTokenResponse>(
              this,
              Invocation.method(
                #verifyToken,
                [],
              ),
            )),
          ) as _i19
              .Future<_i2.Either<_i20.Failure, _i22.ValidateTokenResponse>>);
}

/// A class which mocks [TwitchRepositories].
///
/// See the documentation for Mockito's code generation for more information.
class MockTwitchRepositories extends _i1.Mock
    implements _i3.TwitchRepositories {
  @override
  _i3.TwitchRepositories get twitchRepositories => (super.noSuchMethod(
        Invocation.getter(#twitchRepositories),
        returnValue: _FakeTwitchRepositories_1(
          this,
          Invocation.getter(#twitchRepositories),
        ),
        returnValueForMissingStub: _FakeTwitchRepositories_1(
          this,
          Invocation.getter(#twitchRepositories),
        ),
      ) as _i3.TwitchRepositories);
  @override
  _i4.BitsInterface get bitsRepository => (super.noSuchMethod(
        Invocation.getter(#bitsRepository),
        returnValue: _FakeBitsInterface_2(
          this,
          Invocation.getter(#bitsRepository),
        ),
        returnValueForMissingStub: _FakeBitsInterface_2(
          this,
          Invocation.getter(#bitsRepository),
        ),
      ) as _i4.BitsInterface);
  @override
  _i5.ChannelInterface get channelRepository => (super.noSuchMethod(
        Invocation.getter(#channelRepository),
        returnValue: _FakeChannelInterface_3(
          this,
          Invocation.getter(#channelRepository),
        ),
        returnValueForMissingStub: _FakeChannelInterface_3(
          this,
          Invocation.getter(#channelRepository),
        ),
      ) as _i5.ChannelInterface);
  @override
  _i6.ChatInterface get chatRepository => (super.noSuchMethod(
        Invocation.getter(#chatRepository),
        returnValue: _FakeChatInterface_4(
          this,
          Invocation.getter(#chatRepository),
        ),
        returnValueForMissingStub: _FakeChatInterface_4(
          this,
          Invocation.getter(#chatRepository),
        ),
      ) as _i6.ChatInterface);
  @override
  _i7.ModerationInterface get moderationRepository => (super.noSuchMethod(
        Invocation.getter(#moderationRepository),
        returnValue: _FakeModerationInterface_5(
          this,
          Invocation.getter(#moderationRepository),
        ),
        returnValueForMissingStub: _FakeModerationInterface_5(
          this,
          Invocation.getter(#moderationRepository),
        ),
      ) as _i7.ModerationInterface);
  @override
  _i8.TokenInterface get tokenRepository => (super.noSuchMethod(
        Invocation.getter(#tokenRepository),
        returnValue: _FakeTokenInterface_6(
          this,
          Invocation.getter(#tokenRepository),
        ),
        returnValueForMissingStub: _FakeTokenInterface_6(
          this,
          Invocation.getter(#tokenRepository),
        ),
      ) as _i8.TokenInterface);
  @override
  _i9.UserInterface get userRepository => (super.noSuchMethod(
        Invocation.getter(#userRepository),
        returnValue: _FakeUserInterface_7(
          this,
          Invocation.getter(#userRepository),
        ),
        returnValueForMissingStub: _FakeUserInterface_7(
          this,
          Invocation.getter(#userRepository),
        ),
      ) as _i9.UserInterface);
  @override
  _i10.VideoRepository get videoRepository => (super.noSuchMethod(
        Invocation.getter(#videoRepository),
        returnValue: _FakeVideoRepository_8(
          this,
          Invocation.getter(#videoRepository),
        ),
        returnValueForMissingStub: _FakeVideoRepository_8(
          this,
          Invocation.getter(#videoRepository),
        ),
      ) as _i10.VideoRepository);
  @override
  _i11.AnalyticsRepository get analyticsRepository => (super.noSuchMethod(
        Invocation.getter(#analyticsRepository),
        returnValue: _FakeAnalyticsRepository_9(
          this,
          Invocation.getter(#analyticsRepository),
        ),
        returnValueForMissingStub: _FakeAnalyticsRepository_9(
          this,
          Invocation.getter(#analyticsRepository),
        ),
      ) as _i11.AnalyticsRepository);
  @override
  _i12.PollsRepository get pollsRepository => (super.noSuchMethod(
        Invocation.getter(#pollsRepository),
        returnValue: _FakePollsRepository_10(
          this,
          Invocation.getter(#pollsRepository),
        ),
        returnValueForMissingStub: _FakePollsRepository_10(
          this,
          Invocation.getter(#pollsRepository),
        ),
      ) as _i12.PollsRepository);
  @override
  _i13.PredictionRepository get predictionRepository => (super.noSuchMethod(
        Invocation.getter(#predictionRepository),
        returnValue: _FakePredictionRepository_11(
          this,
          Invocation.getter(#predictionRepository),
        ),
        returnValueForMissingStub: _FakePredictionRepository_11(
          this,
          Invocation.getter(#predictionRepository),
        ),
      ) as _i13.PredictionRepository);
  @override
  _i14.EventSubInterface get eventRepository => (super.noSuchMethod(
        Invocation.getter(#eventRepository),
        returnValue: _FakeEventSubInterface_12(
          this,
          Invocation.getter(#eventRepository),
        ),
        returnValueForMissingStub: _FakeEventSubInterface_12(
          this,
          Invocation.getter(#eventRepository),
        ),
      ) as _i14.EventSubInterface);
  @override
  _i15.ChannelPointsRepository get channelPointsRepository =>
      (super.noSuchMethod(
        Invocation.getter(#channelPointsRepository),
        returnValue: _FakeChannelPointsRepository_13(
          this,
          Invocation.getter(#channelPointsRepository),
        ),
        returnValueForMissingStub: _FakeChannelPointsRepository_13(
          this,
          Invocation.getter(#channelPointsRepository),
        ),
      ) as _i15.ChannelPointsRepository);
  @override
  _i16.StreamsRepository get streamsRepository => (super.noSuchMethod(
        Invocation.getter(#streamsRepository),
        returnValue: _FakeStreamsRepository_14(
          this,
          Invocation.getter(#streamsRepository),
        ),
        returnValueForMissingStub: _FakeStreamsRepository_14(
          this,
          Invocation.getter(#streamsRepository),
        ),
      ) as _i16.StreamsRepository);
  @override
  _i17.ClipRepository get clipRepository => (super.noSuchMethod(
        Invocation.getter(#clipRepository),
        returnValue: _FakeClipRepository_15(
          this,
          Invocation.getter(#clipRepository),
        ),
        returnValueForMissingStub: _FakeClipRepository_15(
          this,
          Invocation.getter(#clipRepository),
        ),
      ) as _i17.ClipRepository);
  @override
  _i18.SubscriptionRepository get subscriptionRepository => (super.noSuchMethod(
        Invocation.getter(#subscriptionRepository),
        returnValue: _FakeSubscriptionRepository_16(
          this,
          Invocation.getter(#subscriptionRepository),
        ),
        returnValueForMissingStub: _FakeSubscriptionRepository_16(
          this,
          Invocation.getter(#subscriptionRepository),
        ),
      ) as _i18.SubscriptionRepository);
}
