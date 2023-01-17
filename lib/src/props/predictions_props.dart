import 'package:freezed_annotation/freezed_annotation.dart';

part 'predictions_props.freezed.dart';
part 'predictions_props.g.dart';

@freezed
class PredictionsProps with _$PredictionsProps {
  const factory PredictionsProps({
    required String broadcasterId,
    String? id,
  }) = _PredictionsProps;

  factory PredictionsProps.fromJson(Map<String, dynamic> json) =>
      _$PredictionsPropsFromJson(json);
}
