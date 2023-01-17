import 'package:freezed_annotation/freezed_annotation.dart';

part 'ban_user_data_props.freezed.dart';
part 'ban_user_data_props.g.dart';

@freezed
class BanUserData with _$BanUserData{
  const factory BanUserData({
    required String? userId,
    required String? reason,
    required int? duration,
  }) = _BanUserData;

  factory BanUserData.fromJson(Map<String, dynamic> json) => _$BanUserDataFromJson(json);
}
