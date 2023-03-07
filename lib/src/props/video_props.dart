import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_props.freezed.dart';

part 'video_props.g.dart';

@freezed
class VideoProps with _$VideoProps {
  const factory VideoProps({
    String? id,
    String? userId,
    String? gameId,
    String? language,
    String? period,
    String? sort,
    String? type,
    String? first,
    String? after,
    String? before,
  }) = _VideoProps;

  factory VideoProps.fromJson(Map<String, dynamic> json) =>
      _$VideoPropsFromJson(json);
}

enum VideoPeriod { all, day, month, week }

enum VideoSort { time, trending, views }

enum VideoType { all, archive, highlight, upload }
