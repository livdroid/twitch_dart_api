import 'package:twitch_client/src/response/datum_response.dart';

class CheermotesResponse {
  final List<CheermotesResponseData> data;

  CheermotesResponse({
    required this.data,
  });

  factory CheermotesResponse.fromJson(Map<String, dynamic> json) =>
      CheermotesResponse(
        data: List<CheermotesResponseData>.from(json["data"].map((x) => CheermotesResponseData.fromJson(x))),
      );
}
