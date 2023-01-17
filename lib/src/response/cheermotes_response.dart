import 'package:twitch_client/src/response/datum_response.dart';

class CheermotesResponse {
  final List<Datum> data;

  CheermotesResponse({
    required this.data,
  });

  factory CheermotesResponse.fromJson(Map<String, dynamic> json) =>
      CheermotesResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}
