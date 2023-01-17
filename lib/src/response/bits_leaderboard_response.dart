import 'package:twitch_client/src/response/data_range_response.dart';

class BitsLeaderboardResponse {
  final List<BitsLeaderBoardData>? data;
  final DateRange? dateRange;
  final int? total;

  BitsLeaderboardResponse({this.data, this.dateRange, this.total});

  factory BitsLeaderboardResponse.fromJson(Map<String, dynamic> json) =>
      BitsLeaderboardResponse(
          data: List<BitsLeaderBoardData>.from(
              json['data']?.map((v) => (BitsLeaderBoardData.fromJson(v)))),
          dateRange: DateRange.fromJson(json['date_range']),
          total: json['total']);
}

class BitsLeaderBoardData {
  final String? userId;
  final String? userLogin;
  final String? userName;
  final int? rank;
  final int? score;

  BitsLeaderBoardData(
      {this.userId, this.userLogin, this.userName, this.rank, this.score});

  factory BitsLeaderBoardData.fromJson(Map<String, dynamic> json) =>
      BitsLeaderBoardData(
          userId: json['user_id'],
          userLogin: json['user_login'],
          userName: json['user_name'],
          rank: json['rank'],
          score: json['score']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['user_login'] = userLogin;
    data['user_name'] = userName;
    data['rank'] = rank;
    data['score'] = score;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
