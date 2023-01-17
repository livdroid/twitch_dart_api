class TwitchApiScopes {
  //*****Twitch API scopes*****//

  // View analytics data for the Twitch Extensions owned
  // by the authenticated account.
  static String analyticsReadExtensions = 'analytics:read:extensions';
  // View analytics data for the games owned by the authenticated account.
  static String analyticsReadGames = 'analytics:read:games';
  // View Bits information for a channel.
  static String bitsRead = 'bits:read';
  // Run commercials on a channel.
  static String channelEditCommercial = 'channel:edit:commercial';
  // Manage a channel’s broadcast configuration, including updating channel
  // configuration and managing stream markers and stream tags.
  static String channelManageBroadcast = 'channel:manage:broadcast';
  // Read charity campaign details and user donations on your channel.
  static String channelReadCharity = 'channel:read:charity';
  // Manage a channel’s Extension configuration, including activating Extensions.
  static String channelManageExtensions = 'channel:manage:extensions';
  // Add or remove the moderator role from users in your channel.
  static String channelManageModerators = 'channel:manage:moderators';
  // Manage a channel’s polls.
  static String channelManagePolls = 'channel:manage:polls';
  // Manage of channel’s Channel Points Predictions
  static String channelManagePredictions = 'channel:manage:predictions';
  // Manage a channel raiding another channel.
  static String channelManageRaids = 'channel:manage:raids';
  // Manage Channel Points custom rewards and their redemptions on a channel.
  static String channelManageRedemptions = 'channel:manage:redemptions';
  // Manage a channel’s stream schedule.
  static String channelManageSchedule = 'channel:manage:schedule';
  // Manage a channel’s videos, including deleting videos.
  static String channelManageVideos = 'channel:manage:videos';
  // View a list of users with the editor role for a channel.
  static String channelReadEditors = 'channel:read:editors';
  // View Creator Goals for a channel.
  static String channelReadGoals = 'channel:read:goals';
  // View Hype Train information for a channel.
  static String channelReadHypeTrain = 'channel:read:hype_train';
  // View a channel’s polls.
  static String channelReadPolls = 'channel:read:polls';
  // View a channel’s Channel Points Predictions.
  static String channelReadPredictions = 'channel:read:predictions';
  // View Channel Points custom rewards and their redemptions on a channel.
  static String channelReadRedemptions = 'channel:read:redemptions';
  // View an authorized user’s stream key.
  static String channelReadStreamKey = 'channel:read:stream_key';
  // View a list of all subscribers to a channel and check
  // if a user is subscribed to a channel.
  static String channelReadSubscriptions = 'channel:read:subscriptions';
  // Read the list of VIPs in your channel.
  static String channelReadVips = 'channel:read:vips';
  // Add or remove the VIP role from users in your channel.
  static String channelManageVips = 'channel:manage:vips';
  // Manage Clips for a channel. Create Clips.
  static String clipsEdit = 'clips:edit';
  // View a channel’s moderation data including
  // Moderators, Bans, Timeouts, and Automod settings.
  static String moderationRead = 'moderation:read';
  // Send announcements in channels where you have the moderator role.
  static String moderatorManageAnnoucements = 'moderator:manage:announcements';
  // Manage messages held for review by AutoMod in channels
  // where you are a moderator.
  static String moderatorManageAutomod = 'moderator:manage:automod';
  // View a broadcaster’s AutoMod settings.
  static String moderatorReadAutomodSettings =
      'moderator:read:automod_settings';
  // Manage a broadcaster’s AutoMod settings.
  static String moderatorManageAutomodSettings =
      'moderator:manage:automod_settings';
  // Ban and unban users.
  static String moderatorManageBannedUsers = 'moderator:manage:banned_users';
  // View a broadcaster’s list of blocked terms.
  static String moderatorReadBlockedTerms = 'moderator:read:blocked_terms';
  // Manage a broadcaster’s list of blocked terms.
  static String moderatorManageBlockedTerms = 'moderator:manage:blocked_terms';
  // Delete chat messages in channels where you have the moderator role
  static String moderatorManageChatMessages = 'moderator:manage:chat_messages';
  // View a broadcaster’s chat room settings.
  static String moderatorReadChatSettings = 'moderator:read:chat_settings';
  // Manage a broadcaster’s chat room settings.
  static String moderatorManageChatSettings = 'moderator:manage:chat_settings';
  // View the chatters in a broadcaster’s chat room.
  static String moderatorReadChatters = 'moderator:read:chatters';
  // Manage a user object.
  static String userEdit = 'user:edit';
  // Manage the block list of a user.
  static String userManageBlockedUsers = 'user:manage:blocked_users';
  // View the block list of a user.
  static String userReadBlockedUsers = 'user:read:blocked_users';
  // View a user’s broadcasting configuration, including Extension configurations.
  static String userReadBroadCast = 'user:read:broadcast';
  // Update the color used for the user’s name in chat.Update User Chat Color
  static String userManageChatColor = 'user:manage:chat_color';
  // View a user’s email address.
  static String userReadEmail = 'user:read:email';
  // View the list of channels a user follows.
  static String userReadFollows = 'user:read:follows';
  // View if an authorized user is subscribed to specific channels.
  static String userReadSubscription = 'user:read:subscriptions';
  // Read whispers that you send and receive, and send whispers on your behalf.
  static String userManageWhispers = 'user:manage:whispers';

  //****** Chat and PubSub scopes *****//

  // Perform moderation actions in a channel.
  // The user requesting the scope must be a moderator in the channel.
  static String channelModerate = 'channel:moderate';
  // Send live stream chat messages.
  static String chatEdit = 'chat:edit';
  // View live stream chat messages.
  static String chatRead = 'chat:read';
  // View your whisper messages.
  static String whispersRead = 'whispers:read';
  // Send whisper messages.
  static String whispersEdit = 'whispers:edit';

  static List<String> allScopes = [
    analyticsReadExtensions,
    analyticsReadGames,
    bitsRead,
    channelEditCommercial,
    channelManageBroadcast,
    channelReadCharity,
    channelManageExtensions,
    channelManageModerators,
    channelManagePolls,
    channelManagePredictions,
    channelManageRaids,
    channelManageRedemptions,
    channelManageSchedule,
    channelManageVideos,
    channelReadEditors,
    channelReadGoals,
    channelReadHypeTrain,
    channelReadPolls,
    channelReadPredictions,
    channelReadRedemptions,
    channelReadStreamKey,
    channelReadSubscriptions,
    channelReadVips,
    channelManageVips,
    clipsEdit,
    moderationRead,
    moderatorManageAnnoucements,
    moderatorManageAutomod,
    moderatorReadAutomodSettings,
    moderatorManageAutomodSettings,
    moderatorManageBannedUsers,
    moderatorReadBlockedTerms,
    moderatorManageBlockedTerms,
    moderatorManageChatMessages,
    moderatorReadChatSettings,
    moderatorManageChatSettings,
    moderatorReadChatters,
    userEdit,
    userManageBlockedUsers,
    userReadBlockedUsers,
    userReadBroadCast,
    userManageChatColor,
    userReadEmail,
    userReadFollows,
    userReadSubscription,
    userManageWhispers,
    channelModerate,
    chatEdit,
    chatRead,
    whispersRead,
    whispersEdit,
  ];
}
