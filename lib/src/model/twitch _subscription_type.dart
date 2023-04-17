class TwitchSubscriptionType {
  ///A broadcaster updates their channel properties e.g.,
  ///category, title, mature flag, broadcast, or language.
  static String channelUpdate = 'channel.update';

  /// A specified channel receives a follow.
  static String channelFollow = 'channel.follow';

  /// A notification when a specified channel receives a subscriber.
  /// This does not include resubscribes.
  static String channelSubscribe = 'channel.subscribe';

  /// A notification when a subscription to the specified channel ends.
  static String channelSubscriptionEnd = 'channel.subscription.end';

  /// A notification when a viewer gives a gift subscription to one
  /// or more users in the specified channel.
  static String channelSubscriptionGift = 'channel.subscription.gift';

  /// A notification when a user sends a resubscription chat
  /// message in a specific channel.
  static String channelSubscriptionMessage = 'channel.subscription.message';

  /// A user cheers on the specified channel.
  static String channelCheer = 'channel.cheer';

  /// A broadcaster raids another broadcaster’s channel.
  static String channelRaid = 'channel.raid';

  /// A viewer is banned from the specified channel.
  static String channelBan = 'channel.ban';

  /// A viewer is unbanned from the specified channel.
  static String channelUnban = 'channel.unban';

  /// Moderator privileges were added to a user on a specified channel.
  static String channelModeratorAdd = 'channel.moderator.add';

  /// Moderator privileges were removed from a user on a specified channel.
  static String channelModeratorRemove = 'channel.moderator.remove';

  /// A custom channel points reward has been created for the specified channel.
  static String channelPointsCustomRewardAdd =
      'channel.channel_points_custom_reward.add';

  /// A custom channel points reward has been updated for the specified channel.
  static String channelPointsCustomRewardUpdate =
      'channel.channel_points_custom_reward.update';

  /// A custom channel points reward has been removed from the specified channel.
  static String channelPointsCustomRewardRemove =
      'channel.channel_points_custom_reward.remove';

  /// A viewer has redeemed a custom channel points reward on the specified channel.
  static String channelPointsCustomRewardRedemptionAdd =
      'channel.channel_points_custom_reward_redemption.add';

  /// A redemption of a channel points custom reward has been updated for
  /// the specified channel.
  static String channelPointsCustomRewardRedemptionUpdate =
      'channel.channel_points_custom_reward_redemption.update';

  /// A poll started on a specified channel.
  static String channelPollBegin = 'channel.poll.begin';

  /// Users respond to a poll on a specified channel.
  static String channelPollProgress = 'channel.poll.progress';

  /// A poll ended on a specified channel.
  static String channelPollEnd = 'channel.poll.end';

  /// A Prediction started on a specified channel.
  static String channelPredictionBegin = 'channel.prediction.begin';

  /// Users participated in a Prediction on a specified channel.
  static String channelPredictionProgress = 'channel.prediction.progress';

  /// A Prediction was locked on a specified channel.
  static String channelPredictionLock = 'channel.prediction.lock';

  /// A Prediction ended on a specified channel.
  static String channelPredictionEnd = 'channel.prediction.end';

  //****** BETA Charity *****//

  /// Sends an event notification when a user donates to the
  /// broadcaster’s charity campaign.
  static String channelCharityDonation = 'channel.charity_campaign.donate';

  /// Sends an event notification when the broadcaster starts a charity campaign.
  static String channelCharityCampaignStart = 'channel.charity_campaign.start';

  /// Sends an event notification when progress is made towards
  /// the campaign’s goal or when the broadcaster changes the fundraising goal.
  static String channelCharityCampaignProgress =
      'channel.charity_campaign.progress';

  /// Sends an event notification when the broadcaster stops a charity campaign.
  static String channelCharityCampaignStop = 'channel.charity_campaign.stop';

//****** End BETA Charity *****//

  /// An entitlement for a Drop is granted to a user.
  static String dropEntitlementGrant = 'drop.entitlement.grant';

  /// A Bits transaction occurred for a specified Twitch Extension.
  static String extensionBitsTransactionCreate =
      'extension.bits_transaction.create';

  /// Get notified when a broadcaster begins a goal.
  static String channelGoalBegin = 'channel.goal.begin';

  /// Get notified when progress (either positive or negative)
  /// is made towards a broadcaster’s goal.
  static String channelGoalProgress = 'channel.goal.progress';

  /// Get notified when a broadcaster ends a goal.
  static String channelGoalEnd = 'channel.goal.end';

  /// A Hype Train begins on the specified channel.
  static String channelHypeTrainBegin = 'channel.hype_train.begin';

  /// A Hype Train makes progress on the specified channel.
  static String channelHypeTrainProgress = 'channel.hype_train.progress';

  /// A Hype Train ends on the specified channel.
  static String channelHypeTrainEnd = 'channel.hype_train.end';

//****** BETA Shield *****//
  /// Sends a notification when the broadcaster activates Shield Mode.
  static String channelShieldModeBegin = 'channel.shield_mode.begin';

  /// Sends a notification when the broadcaster deactivates Shield Mode.
  static String channelShieldModeEnd = 'channel.shield_mode.end';

  //****** End BETA Shield *****//

  /// The specified broadcaster starts a stream.
  static String streamOnline = 'stream.online';

  /// The specified broadcaster stops a stream.
  static String streamOffline = 'stream.offline';

  /// A user’s authorization has been granted to your client id.
  static String userAuthorizationGrant = 'user.authorization.grant';

  /// A user’s authorization has been revoked for your client id.
  static String userAuthorizationRevoke = 'user.authorization.revoke';

  /// A user has updated their account.
  static String userUpdate = 'user.update';

  static List<String> allSubscriptions = [
    channelUpdate,
    channelFollow,
    channelSubscribe,
    channelSubscriptionEnd,
    channelSubscriptionGift,
    channelSubscriptionMessage,
    channelCheer,
    channelRaid,
    channelBan,
    channelUnban,
    channelModeratorAdd,
    channelModeratorRemove,
    channelPointsCustomRewardAdd,
    channelPointsCustomRewardUpdate,
    channelPointsCustomRewardRemove,
    channelPointsCustomRewardRedemptionAdd,
    channelPointsCustomRewardRedemptionUpdate,
    channelPollBegin,
    channelPollProgress,
    channelPollEnd,
    channelPredictionBegin,
    channelPredictionProgress,
    channelPredictionLock,
    channelPredictionEnd,
    channelCharityDonation,
    channelCharityCampaignStart,
    channelCharityCampaignProgress,
    channelCharityCampaignStop,
    dropEntitlementGrant,
    extensionBitsTransactionCreate,
    channelGoalBegin,
    channelGoalProgress,
    channelGoalEnd,
    channelHypeTrainBegin,
    channelHypeTrainProgress,
    channelHypeTrainEnd,
    channelShieldModeBegin,
    channelShieldModeEnd,
    streamOnline,
    streamOffline,
    userAuthorizationGrant,
    userAuthorizationRevoke,
    userUpdate,
  ];
}
