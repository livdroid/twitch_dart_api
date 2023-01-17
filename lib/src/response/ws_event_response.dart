class WSEventResponse {
  Metadata? metadata;
  Payload? payload;

  WSEventResponse({this.metadata, this.payload});

  WSEventResponse.fromJson(Map<String, dynamic> json) {
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    payload =
        json['payload'] != null ? new Payload.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.payload != null) {
      data['payload'] = this.payload!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message_id'] = this.messageId;
    data['message_type'] = this.messageType;
    data['message_timestamp'] = this.messageTimestamp;
    return data;
  }
}

class Payload {
  Session? session;

  Payload({this.session});

  Payload.fromJson(Map<String, dynamic> json) {
    session =
        json['session'] != null ? new Session.fromJson(json['session']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.session != null) {
      data['session'] = this.session!.toJson();
    }
    return data;
  }
}

class Session {
  String? id;
  String? status;
  String? connectedAt;
  int? keepaliveTimeoutSeconds;
  Null? reconnectUrl;

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['connected_at'] = this.connectedAt;
    data['keepalive_timeout_seconds'] = this.keepaliveTimeoutSeconds;
    data['reconnect_url'] = this.reconnectUrl;
    return data;
  }
}
