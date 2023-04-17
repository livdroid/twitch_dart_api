// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      broadcasterUserId: json['broadcaster_user_id'] as String?,
      broadcasterUserLogin: json['broadcaster_user_login'] as String?,
      broadcasterUserName: json['broadcaster_user_name'] as String?,
      categoryId: json['category_id'] as String?,
      categoryName: json['category_name'] as String?,
      isMature: json['is_mature'] as bool?,
      language: json['language'] as String?,
      title: json['title'] as String?,
      followedAt: json['followed_at'] == null
          ? null
          : DateTime.parse(json['followed_at'] as String),
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      tier: json['tier'] as String?,
      isGift: json['is_gift'] as bool?,
      total: json['total'] as int?,
      cumulativeTotal: json['cumulative_total'] as int?,
      isAnonymous: json['is_anonymous'] as bool?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      cumulativeMonths: json['cumulative_months'] as int?,
      streakMonths: json['streak_months'] as int?,
      durationMonths: json['duration_months'] as int?,
      bits: json['bits'] as int?,
      fromBroadcasterUserId: json['from_broadcaster_user_id'] as String?,
      fromBroadcasterUserLogin: json['from_broadcaster_user_login'] as String?,
      fromBroadcasterUserName: json['from_broadcaster_user_name'] as String?,
      toBroadcasterUserId: json['to_broadcaster_user_id'] as String?,
      toBroadcasterUserLogin: json['to_broadcaster_user_login'] as String?,
      toBroadcasterUserName: json['to_broadcaster_user_name'] as String?,
      viewers: json['viewers'] as int?,
      moderatorUserId: json['moderator_user_id'] as String?,
      moderatorUserLogin: json['moderator_user_login'] as String?,
      moderatorUserName: json['moderator_user_name'] as String?,
      reason: json['reason'] as String?,
      bannedAt: json['banned_at'] == null
          ? null
          : DateTime.parse(json['banned_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      isPermanent: json['is_permanent'] as bool?,
      id: json['id'] as String?,
      isEnabled: json['is_enabled'] as bool?,
      isPaused: json['is_paused'] as bool?,
      isInStock: json['is_in_stock'] as bool?,
      cost: json['cost'] as int?,
      prompt: json['prompt'] as String?,
      isUserInputRequired: json['is_user_input_required'] as bool?,
      shouldRedemptionsSkipRequestQueue:
          json['should_redemptions_skip_request_queue'] as bool?,
      cooldownExpiresAt: json['cooldown_expires_at'],
      redemptionsRedeemedCurrentStream:
          json['redemptions_redeemed_current_stream'],
      maxPerStream: json['max_per_stream'] == null
          ? null
          : MaxPerPerStream.fromJson(
              json['max_per_stream'] as Map<String, dynamic>),
      maxPerUserPerStream: json['max_per_user_per_stream'] == null
          ? null
          : MaxPerPerStream.fromJson(
              json['max_per_user_per_stream'] as Map<String, dynamic>),
      globalCooldown: json['global_cooldown'] == null
          ? null
          : GlobalCooldown.fromJson(
              json['global_cooldown'] as Map<String, dynamic>),
      backgroundColor: json['background_color'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      defaultImage: json['default_image'] == null
          ? null
          : Image.fromJson(json['default_image'] as Map<String, dynamic>),
      userInput: json['user_input'] as String?,
      status: json['status'] as String?,
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
      redeemedAt: json['redeemed_at'] == null
          ? null
          : DateTime.parse(json['redeemed_at'] as String),
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      bitsVoting: json['bits_voting'] == null
          ? null
          : TsVoting.fromJson(json['bits_voting'] as Map<String, dynamic>),
      channelPointsVoting: json['channel_points_voting'] == null
          ? null
          : TsVoting.fromJson(
              json['channel_points_voting'] as Map<String, dynamic>),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => Outcome.fromJson(e as Map<String, dynamic>))
          .toList(),
      locksAt: json['locks_at'] == null
          ? null
          : DateTime.parse(json['locks_at'] as String),
      progress: json['progress'] as int?,
      goal: json['goal'] as int?,
      topContributions: (json['top_contributions'] as List<dynamic>?)
          ?.map((e) => Contribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastContribution: json['last_contribution'] == null
          ? null
          : Contribution.fromJson(
              json['last_contribution'] as Map<String, dynamic>),
      level: json['level'] as int?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      cooldownEndsAt: json['cooldown_ends_at'] == null
          ? null
          : DateTime.parse(json['cooldown_ends_at'] as String),
      campaignId: json['campaign_id'] as String?,
      charityName: json['charity_name'] as String?,
      charityDescription: json['charity_description'] as String?,
      charityLogo: json['charity_logo'] as String?,
      charityWebsite: json['charity_website'] as String?,
      amount: json['amount'] == null
          ? null
          : Amount.fromJson(json['amount'] as Map<String, dynamic>),
      broadcasterId: json['broadcaster_id'] as String?,
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterLogin: json['broadcaster_login'] as String?,
      currentAmount: json['current_amount'] == null
          ? null
          : Amount.fromJson(json['current_amount'] as Map<String, dynamic>),
      targetAmount: json['target_amount'] == null
          ? null
          : Amount.fromJson(json['target_amount'] as Map<String, dynamic>),
      stoppedAt: json['stopped_at'] as String?,
      viewerCount: json['viewer_count'] as int?,
      targetCooldownEndsAt: json['target_cooldown_ends_at'] == null
          ? null
          : DateTime.parse(json['target_cooldown_ends_at'] as String),
      type: json['type'] as String?,
      description: json['description'] as String?,
      isAchieved: json['is_achieved'] as bool?,
      email: json['email'] as String?,
      emailVerified: json['email_verified'] as bool?,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_user_id', instance.broadcasterUserId);
  writeNotNull('broadcaster_user_login', instance.broadcasterUserLogin);
  writeNotNull('broadcaster_user_name', instance.broadcasterUserName);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('category_name', instance.categoryName);
  writeNotNull('is_mature', instance.isMature);
  writeNotNull('language', instance.language);
  writeNotNull('title', instance.title);
  writeNotNull('followed_at', instance.followedAt?.toIso8601String());
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('tier', instance.tier);
  writeNotNull('is_gift', instance.isGift);
  writeNotNull('total', instance.total);
  writeNotNull('cumulative_total', instance.cumulativeTotal);
  writeNotNull('is_anonymous', instance.isAnonymous);
  writeNotNull('message', instance.message?.toJson());
  writeNotNull('cumulative_months', instance.cumulativeMonths);
  writeNotNull('streak_months', instance.streakMonths);
  writeNotNull('duration_months', instance.durationMonths);
  writeNotNull('bits', instance.bits);
  writeNotNull('from_broadcaster_user_id', instance.fromBroadcasterUserId);
  writeNotNull(
      'from_broadcaster_user_login', instance.fromBroadcasterUserLogin);
  writeNotNull('from_broadcaster_user_name', instance.fromBroadcasterUserName);
  writeNotNull('to_broadcaster_user_id', instance.toBroadcasterUserId);
  writeNotNull('to_broadcaster_user_login', instance.toBroadcasterUserLogin);
  writeNotNull('to_broadcaster_user_name', instance.toBroadcasterUserName);
  writeNotNull('viewers', instance.viewers);
  writeNotNull('moderator_user_id', instance.moderatorUserId);
  writeNotNull('moderator_user_login', instance.moderatorUserLogin);
  writeNotNull('moderator_user_name', instance.moderatorUserName);
  writeNotNull('reason', instance.reason);
  writeNotNull('banned_at', instance.bannedAt?.toIso8601String());
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('is_permanent', instance.isPermanent);
  writeNotNull('id', instance.id);
  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('is_paused', instance.isPaused);
  writeNotNull('is_in_stock', instance.isInStock);
  writeNotNull('cost', instance.cost);
  writeNotNull('prompt', instance.prompt);
  writeNotNull('is_user_input_required', instance.isUserInputRequired);
  writeNotNull('should_redemptions_skip_request_queue',
      instance.shouldRedemptionsSkipRequestQueue);
  writeNotNull('cooldown_expires_at', instance.cooldownExpiresAt);
  writeNotNull('redemptions_redeemed_current_stream',
      instance.redemptionsRedeemedCurrentStream);
  writeNotNull('max_per_stream', instance.maxPerStream?.toJson());
  writeNotNull(
      'max_per_user_per_stream', instance.maxPerUserPerStream?.toJson());
  writeNotNull('global_cooldown', instance.globalCooldown?.toJson());
  writeNotNull('background_color', instance.backgroundColor);
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('default_image', instance.defaultImage?.toJson());
  writeNotNull('user_input', instance.userInput);
  writeNotNull('status', instance.status);
  writeNotNull('reward', instance.reward?.toJson());
  writeNotNull('redeemed_at', instance.redeemedAt?.toIso8601String());
  writeNotNull('choices', instance.choices?.map((e) => e.toJson()).toList());
  writeNotNull('bits_voting', instance.bitsVoting?.toJson());
  writeNotNull('channel_points_voting', instance.channelPointsVoting?.toJson());
  writeNotNull('started_at', instance.startedAt?.toIso8601String());
  writeNotNull('outcomes', instance.outcomes?.map((e) => e.toJson()).toList());
  writeNotNull('locks_at', instance.locksAt?.toIso8601String());
  writeNotNull('progress', instance.progress);
  writeNotNull('goal', instance.goal);
  writeNotNull('top_contributions',
      instance.topContributions?.map((e) => e.toJson()).toList());
  writeNotNull('last_contribution', instance.lastContribution?.toJson());
  writeNotNull('level', instance.level);
  writeNotNull('expires_at', instance.expiresAt?.toIso8601String());
  writeNotNull('ended_at', instance.endedAt?.toIso8601String());
  writeNotNull('cooldown_ends_at', instance.cooldownEndsAt?.toIso8601String());
  writeNotNull('campaign_id', instance.campaignId);
  writeNotNull('charity_name', instance.charityName);
  writeNotNull('charity_description', instance.charityDescription);
  writeNotNull('charity_logo', instance.charityLogo);
  writeNotNull('charity_website', instance.charityWebsite);
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('broadcaster_login', instance.broadcasterLogin);
  writeNotNull('current_amount', instance.currentAmount?.toJson());
  writeNotNull('target_amount', instance.targetAmount?.toJson());
  writeNotNull('stopped_at', instance.stoppedAt);
  writeNotNull('viewer_count', instance.viewerCount);
  writeNotNull('target_cooldown_ends_at',
      instance.targetCooldownEndsAt?.toIso8601String());
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('is_achieved', instance.isAchieved);
  writeNotNull('email', instance.email);
  writeNotNull('email_verified', instance.emailVerified);
  return val;
}

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      text: json['text'] as String?,
      emotes: (json['emotes'] as List<dynamic>?)
          ?.map((e) => Emote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('emotes', instance.emotes?.map((e) => e.toJson()).toList());
  return val;
}

_$_Emote _$$_EmoteFromJson(Map<String, dynamic> json) => _$_Emote(
      begin: json['begin'] as int?,
      end: json['end'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_EmoteToJson(_$_Emote instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('begin', instance.begin);
  writeNotNull('end', instance.end);
  writeNotNull('id', instance.id);
  return val;
}

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      url1X: json['url1_x'] as String?,
      url2X: json['url2_x'] as String?,
      url4X: json['url4_x'] as String?,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url1_x', instance.url1X);
  writeNotNull('url2_x', instance.url2X);
  writeNotNull('url4_x', instance.url4X);
  return val;
}

_$_GlobalCooldown _$$_GlobalCooldownFromJson(Map<String, dynamic> json) =>
    _$_GlobalCooldown(
      isEnabled: json['is_enabled'] as bool?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$_GlobalCooldownToJson(_$_GlobalCooldown instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('seconds', instance.seconds);
  return val;
}

_$_MaxPerPerStream _$$_MaxPerPerStreamFromJson(Map<String, dynamic> json) =>
    _$_MaxPerPerStream(
      isEnabled: json['is_enabled'] as bool?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$$_MaxPerPerStreamToJson(_$_MaxPerPerStream instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('value', instance.value);
  return val;
}

_$_TsVoting _$$_TsVotingFromJson(Map<String, dynamic> json) => _$_TsVoting(
      isEnabled: json['is_enabled'] as bool?,
      amountPerVote: json['amount_per_vote'] as int?,
    );

Map<String, dynamic> _$$_TsVotingToJson(_$_TsVoting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('amount_per_vote', instance.amountPerVote);
  return val;
}

_$_Choice _$$_ChoiceFromJson(Map<String, dynamic> json) => _$_Choice(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_ChoiceToJson(_$_Choice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  return val;
}

_$_Outcome _$$_OutcomeFromJson(Map<String, dynamic> json) => _$_Outcome(
      id: json['id'] as String?,
      title: json['title'] as String?,
      color: json['color'] as String?,
      users: json['users'] as int?,
      channelPoints: json['channel_points'] as int?,
      topPredictors: (json['top_predictors'] as List<dynamic>?)
          ?.map((e) => TopPredictor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OutcomeToJson(_$_Outcome instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('color', instance.color);
  writeNotNull('users', instance.users);
  writeNotNull('channel_points', instance.channelPoints);
  writeNotNull('top_predictors',
      instance.topPredictors?.map((e) => e.toJson()).toList());
  return val;
}

_$_TopPredictor _$$_TopPredictorFromJson(Map<String, dynamic> json) =>
    _$_TopPredictor(
      userName: json['user_name'] as String?,
      userLogin: json['user_login'] as String?,
      userId: json['user_id'] as String?,
      channelPointsWon: json['channel_points_won'] as int?,
      channelPointsUsed: json['channel_points_used'] as int?,
    );

Map<String, dynamic> _$$_TopPredictorToJson(_$_TopPredictor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_name', instance.userName);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_id', instance.userId);
  writeNotNull('channel_points_won', instance.channelPointsWon);
  writeNotNull('channel_points_used', instance.channelPointsUsed);
  return val;
}

_$_Contribution _$$_ContributionFromJson(Map<String, dynamic> json) =>
    _$_Contribution(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      type: json['type'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ContributionToJson(_$_Contribution instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('type', instance.type);
  writeNotNull('total', instance.total);
  return val;
}

_$_TopContribution _$$_TopContributionFromJson(Map<String, dynamic> json) =>
    _$_TopContribution(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      type: json['type'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_TopContributionToJson(_$_TopContribution instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('type', instance.type);
  writeNotNull('total', instance.total);
  return val;
}

_$_Amount _$$_AmountFromJson(Map<String, dynamic> json) => _$_Amount(
      value: json['value'] as int?,
      decimalPlaces: json['decimal_places'] as int?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$_AmountToJson(_$_Amount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('decimal_places', instance.decimalPlaces);
  writeNotNull('currency', instance.currency);
  return val;
}
