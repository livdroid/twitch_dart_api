// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersProps _$$_UsersPropsFromJson(Map<String, dynamic> json) =>
    _$_UsersProps(
      id: json['id'] as String?,
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$_UsersPropsToJson(_$_UsersProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('login', instance.login);
  return val;
}
