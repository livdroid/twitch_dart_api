class GetEventSubProps {
  final String? id;
  final String? status;
  final String? type;
  final String? after;

  GetEventSubProps({this.id, this.status, this.after, this.type});

  factory GetEventSubProps.fromJson(Map<String, dynamic> json) =>
      GetEventSubProps(
          id: json['id'],
          status: json['status'],
          type: json['type'],
          after: json['after']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['type'] = type;
    data['after'] = after;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
