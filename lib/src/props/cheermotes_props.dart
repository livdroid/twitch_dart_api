import 'package:freezed_annotation/freezed_annotation.dart';

part 'cheermotes_props.freezed.dart';
part 'cheermotes_props.g.dart';

@freezed
class CheermotesProps with _$CheermotesProps {
  const factory CheermotesProps({
    required String broadcasterId,
  }) = _CheermotesProps;

  factory CheermotesProps.fromJson(Map<String, dynamic> json) =>
      _$CheermotesPropsFromJson(json);
}
