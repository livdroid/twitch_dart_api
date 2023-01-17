import 'package:twitch_client/src/response/pagination_response.dart';

class VideoResponse {
  List<VideoResponseData>? data;
  Pagination? pagination;

  VideoResponse({this.data, this.pagination});

  VideoResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <VideoResponseData>[];
      json['data'].forEach((v) {
        data!.add(VideoResponseData.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }
}

class VideoResponseData {
  String? id;
  String? streamId;
  String? userId;
  String? userLogin;
  String? userName;
  String? title;
  String? description;
  String? createdAt;
  String? publishedAt;
  String? url;
  String? thumbnailUrl;
  String? viewable;
  int? viewCount;
  String? language;
  String? type;
  String? duration;
  List<MutedSegments>? mutedSegments;

  VideoResponseData(
      {this.id, this.streamId, this.userId, this.userLogin, this.userName, this.title, this.description, this.createdAt, this.publishedAt, this.url, this.thumbnailUrl, this.viewable, this.viewCount, this.language, this.type, this.duration, this.mutedSegments});

  VideoResponseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    streamId = json['stream_id'];
    userId = json['user_id'];
    userLogin = json['user_login'];
    userName = json['user_name'];
    title = json['title'];
    description = json['description'];
    createdAt = json['created_at'];
    publishedAt = json['published_at'];
    url = json['url'];
    thumbnailUrl = json['thumbnail_url'];
    viewable = json['viewable'];
    viewCount = json['view_count'];
    language = json['language'];
    type = json['type'];
    duration = json['duration'];
    if (json['muted_segments'] != null) {
      mutedSegments = <MutedSegments>[];
      json['muted_segments'].forEach((v) {
        mutedSegments!.add(MutedSegments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['stream_id'] = this.streamId;
    data['user_id'] = this.userId;
    data['user_login'] = this.userLogin;
    data['user_name'] = this.userName;
    data['title'] = this.title;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['published_at'] = this.publishedAt;
    data['url'] = this.url;
    data['thumbnail_url'] = this.thumbnailUrl;
    data['viewable'] = this.viewable;
    data['view_count'] = this.viewCount;
    data['language'] = this.language;
    data['type'] = this.type;
    data['duration'] = this.duration;
    if (this.mutedSegments != null) {
      data['muted_segments'] =
          this.mutedSegments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MutedSegments {
  int? duration;
  int? offset;

  MutedSegments({this.duration, this.offset});

  MutedSegments.fromJson(Map<String, dynamic> json) {
    duration = json['duration'];
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['duration'] = this.duration;
    data['offset'] = this.offset;
    return data;
  }
}