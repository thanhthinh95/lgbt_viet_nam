class Gender {
  final String id;
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
    this.id,
  );

  Gender.fromJson(Map<String, dynamic> json)
      : id = json['_id'].toString(),
        name = json['name'].toString(),
        icon = json['icon'].toString(),
        created = json['created'] != null ? DateTime.parse(json['created'].toString()) : null,
        updated =  json['updated'] != null ? DateTime.parse(json['updated'].toString()) : null,
        status = int.parse(json['status'].toString());

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'icon': icon,
        'created': created,
        'updated': updated,
        'status': status,
      };
}
