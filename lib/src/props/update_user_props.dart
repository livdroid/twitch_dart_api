import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_props.freezed.dart';

part 'update_user_props.g.dart';

@freezed
class UpdateUserProps with _$UpdateUserProps {
  const factory UpdateUserProps({required String description}) =
      _UpdateUserProps;

  factory UpdateUserProps.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserPropsFromJson(json);
}
