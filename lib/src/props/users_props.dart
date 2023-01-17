import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_props.freezed.dart';

part 'users_props.g.dart';

@freezed
class UsersProps with _$UsersProps {
  const factory UsersProps({
    String? id,
    String? login,
  }) = _UsersProps;

  factory UsersProps.fromJson(Map<String, dynamic> json) => _$UsersPropsFromJson(json);
}
