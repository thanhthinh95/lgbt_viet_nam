class Gender {
  final String _id;
  final String name;
  final String icon;

  final DateTime created;
  final DateTime updated;
  final int status;

  Gender(
    this.created,
    this.updated,
    this.status,
    this.name,
    this.icon,
    this._id,
  );

  Gender.fromJson(Map<String, dynamic> json)
      : _id = json['_id'].toString(),
        name = json['name'].toString(),
        icon = json['icon'].toString(),
        created =  DateTime.parse(json['created'].toString()),
        updated =  DateTime.parse(json['updated'].toString()),
        status = int.parse(json['status'].toString());

  Map<String, dynamic> toJson() => {
        '_id': _id,
        'name': name,
        'icon': icon,
        'created': created,
        'updated': updated,
        'status': status,
      };
}
