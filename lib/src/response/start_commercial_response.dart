class StartCommercialResponse {
  List<StartCommercialData>? data;

  StartCommercialResponse({this.data});

  factory StartCommercialResponse.fromJson(Map<String, dynamic> json) =>
      StartCommercialResponse(
          data: List<StartCommercialData>.from(
              json['data'].map((e) => StartCommercialData.fromJson(e))));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StartCommercialData {
  final int? length;
  final String? message;
  final int? retryAfter;

  StartCommercialData({this.length, this.message, this.retryAfter});

  factory StartCommercialData.fromJson(Map<String, dynamic> json) =>
      StartCommercialData(
          length: json['length'],
          message: json['message'],
          retryAfter: json['retry_after']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['length'] = length;
    data['message'] = message;
    data['retry_after'] = retryAfter;
    return data;
  }
}
