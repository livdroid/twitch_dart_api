import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_streams_props.freezed.dart';
part 'get_streams_props.g.dart';

@freezed
class GetStreamsProps with _$GetStreamsProps {
  const factory GetStreamsProps({
    String? userId,
    String? userLogin,
    String? gameId,
    String? type,
    String? language,
    int? first,
    int? before,
    int? after,
}) = _GetStreamsProps;

  factory GetStreamsProps.fromJson(Map<String, dynamic> json) =>
      _$GetStreamsPropsFromJson(json);
}
