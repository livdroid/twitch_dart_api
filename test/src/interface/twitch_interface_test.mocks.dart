// Mocks generated by Mockito 5.3.2 from annotations
// in twitch_client/test/src/interface/twitch_interface_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i15;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:twitch_client/src/error/failure.dart' as _i16;
import 'package:twitch_client/src/interface/analytics_repository.dart' as _i11;
import 'package:twitch_client/src/interface/bits_repository.dart' as _i4;
import 'package:twitch_client/src/interface/channel_repository.dart' as _i5;
import 'package:twitch_client/src/interface/chat_repository.dart' as _i6;
import 'package:twitch_client/src/interface/event_sub_repository.dart' as _i14;
import 'package:twitch_client/src/interface/moderation_repository.dart' as _i7;
import 'package:twitch_client/src/interface/polls_repository.dart' as _i12;
import 'package:twitch_client/src/interface/predictions_repository.dart'
    as _i13;
import 'package:twitch_client/src/interface/token_repository.dart' as _i8;
import 'package:twitch_client/src/interface/twitch_repositories.dart' as _i3;
import 'package:twitch_client/src/interface/user_repository.dart' as _i9;
import 'package:twitch_client/src/interface/video_repository.dart' as _i10;
import 'package:twitch_client/src/props/token_client_props.dart' as _i17;
import 'package:twitch_client/src/response/validate_token_response.dart'
    as _i18;

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

/// A class which mocks [TokenInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockTokenInterface extends _i1.Mock implements _i8.TokenInterface {
  @override
  _i15.Future<_i2.Either<_i16.Failure, bool>> revokeAccessToken(
          {required _i17.TokenClientProps? props}) =>
      (super.noSuchMethod(
        Invocation.method(
          #revokeAccessToken,
          [],
          {#props: props},
        ),
        returnValue: _i15.Future<_i2.Either<_i16.Failure, bool>>.value(
            _FakeEither_0<_i16.Failure, bool>(
          this,
          Invocation.method(
            #revokeAccessToken,
            [],
            {#props: props},
          ),
        )),
        returnValueForMissingStub:
            _i15.Future<_i2.Either<_i16.Failure, bool>>.value(
                _FakeEither_0<_i16.Failure, bool>(
          this,
          Invocation.method(
            #revokeAccessToken,
            [],
            {#props: props},
          ),
        )),
      ) as _i15.Future<_i2.Either<_i16.Failure, bool>>);
  @override
  _i15.Future<_i2.Either<_i16.Failure, _i18.ValidateTokenResponse>>
      verifyToken() => (super.noSuchMethod(
            Invocation.method(
              #verifyToken,
              [],
            ),
            returnValue: _i15.Future<
                    _i2.Either<_i16.Failure, _i18.ValidateTokenResponse>>.value(
                _FakeEither_0<_i16.Failure, _i18.ValidateTokenResponse>(
              this,
              Invocation.method(
                #verifyToken,
                [],
              ),
            )),
            returnValueForMissingStub: _i15.Future<
                    _i2.Either<_i16.Failure, _i18.ValidateTokenResponse>>.value(
                _FakeEither_0<_i16.Failure, _i18.ValidateTokenResponse>(
              this,
              Invocation.method(
                #verifyToken,
                [],
              ),
            )),
          ) as _i15
              .Future<_i2.Either<_i16.Failure, _i18.ValidateTokenResponse>>);
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
        Invocation.getter(#bits),
        returnValue: _FakeBitsInterface_2(
          this,
          Invocation.getter(#bits),
        ),
        returnValueForMissingStub: _FakeBitsInterface_2(
          this,
          Invocation.getter(#bits),
        ),
      ) as _i4.BitsInterface);
  @override
  _i5.ChannelInterface get channelRepository => (super.noSuchMethod(
        Invocation.getter(#channel),
        returnValue: _FakeChannelInterface_3(
          this,
          Invocation.getter(#channel),
        ),
        returnValueForMissingStub: _FakeChannelInterface_3(
          this,
          Invocation.getter(#channel),
        ),
      ) as _i5.ChannelInterface);
  @override
  _i6.ChatInterface get chatRepository => (super.noSuchMethod(
        Invocation.getter(#chat),
        returnValue: _FakeChatInterface_4(
          this,
          Invocation.getter(#chat),
        ),
        returnValueForMissingStub: _FakeChatInterface_4(
          this,
          Invocation.getter(#chat),
        ),
      ) as _i6.ChatInterface);
  @override
  _i7.ModerationInterface get moderationRepository => (super.noSuchMethod(
        Invocation.getter(#moderation),
        returnValue: _FakeModerationInterface_5(
          this,
          Invocation.getter(#moderation),
        ),
        returnValueForMissingStub: _FakeModerationInterface_5(
          this,
          Invocation.getter(#moderation),
        ),
      ) as _i7.ModerationInterface);
  @override
  _i8.TokenInterface get tokenRepository => (super.noSuchMethod(
        Invocation.getter(#token),
        returnValue: _FakeTokenInterface_6(
          this,
          Invocation.getter(#token),
        ),
        returnValueForMissingStub: _FakeTokenInterface_6(
          this,
          Invocation.getter(#token),
        ),
      ) as _i8.TokenInterface);
  @override
  _i9.UserInterface get userRepository => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _FakeUserInterface_7(
          this,
          Invocation.getter(#user),
        ),
        returnValueForMissingStub: _FakeUserInterface_7(
          this,
          Invocation.getter(#user),
        ),
      ) as _i9.UserInterface);
  @override
  _i10.VideoRepository get videoRepository => (super.noSuchMethod(
        Invocation.getter(#video),
        returnValue: _FakeVideoRepository_8(
          this,
          Invocation.getter(#video),
        ),
        returnValueForMissingStub: _FakeVideoRepository_8(
          this,
          Invocation.getter(#video),
        ),
      ) as _i10.VideoRepository);
  @override
  _i11.AnalyticsRepository get analyticsRepository => (super.noSuchMethod(
        Invocation.getter(#analytics),
        returnValue: _FakeAnalyticsRepository_9(
          this,
          Invocation.getter(#analytics),
        ),
        returnValueForMissingStub: _FakeAnalyticsRepository_9(
          this,
          Invocation.getter(#analytics),
        ),
      ) as _i11.AnalyticsRepository);
  @override
  _i12.PollsRepository get pollsRepository => (super.noSuchMethod(
        Invocation.getter(#polls),
        returnValue: _FakePollsRepository_10(
          this,
          Invocation.getter(#polls),
        ),
        returnValueForMissingStub: _FakePollsRepository_10(
          this,
          Invocation.getter(#polls),
        ),
      ) as _i12.PollsRepository);
  @override
  _i13.PredictionRepository get predictionRepository => (super.noSuchMethod(
        Invocation.getter(#prediction),
        returnValue: _FakePredictionRepository_11(
          this,
          Invocation.getter(#prediction),
        ),
        returnValueForMissingStub: _FakePredictionRepository_11(
          this,
          Invocation.getter(#prediction),
        ),
      ) as _i13.PredictionRepository);
  @override
  _i14.EventSubInterface get eventRepository => (super.noSuchMethod(
        Invocation.getter(#event),
        returnValue: _FakeEventSubInterface_12(
          this,
          Invocation.getter(#event),
        ),
        returnValueForMissingStub: _FakeEventSubInterface_12(
          this,
          Invocation.getter(#event),
        ),
      ) as _i14.EventSubInterface);
}
