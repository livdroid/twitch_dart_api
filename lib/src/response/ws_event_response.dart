class WSEventResponse {
  Metadata? metadata;
  Payload? payload;

  WSEventResponse({this.metadata, this.payload});

  WSEventResponse.fromJson(Map<String, dynamic> json) {
    metadata = json['metadata'] != null
        ? Metadata.fromJson(json['metadata'])
        : null;
    payload =
        json['payload'] != null ? Payload.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    if (payload != null) {
      data['payload'] = payload!.toJson();
    }
    return data;
  }
}

class Metadata {
  String? messageId;
  String? messageType;
  String? messageTimestamp;

  Metadata({this.messageId, this.messageType, this.messageTimestamp});

  Metadata.fromJson(Map<String, dynamic> json) {
    messageId = json['message_id'];
    messageType = json['message_type'];
    messageTimestamp = json['message_timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message_id'] = messageId;
    data['message_type'] = messageType;
    data['message_timestamp'] = messageTimestamp;
    return data;
  }
}

class Payload {
  Session? session;

  Payload({this.session});

  Payload.fromJson(Map<String, dynamic> json) {
    session =
        json['session'] != null ? Session.fromJson(json['session']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (session != null) {
      data['session'] = session!.toJson();
    }
    return data;
  }
}

class Session {
  String? id;
  String? status;
  String? connectedAt;
  int? keepaliveTimeoutSeconds;
  String? reconnectUrl;

  Session(
      {this.id,
      this.status,
      this.connectedAt,
      this.keepaliveTimeoutSeconds,
      this.reconnectUrl});

  Session.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    connectedAt = json['connected_at'];
    keepaliveTimeoutSeconds = json['keepalive_timeout_seconds'];
    reconnectUrl = json['reconnect_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['connected_at'] = connectedAt;
    data['keepalive_timeout_seconds'] = keepaliveTimeoutSeconds;
    data['reconnect_url'] = reconnectUrl;
    return data;
  }
}
