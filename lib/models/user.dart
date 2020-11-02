class User {
  final String email;
  final String password;
  final String firstName;
  final String name;
  final DateTime birthDay;
  final String genderId;
  final int type;
  final String avatar;
  final String cover;
  final String description;
  final DateTime created;
  final DateTime updated;
  final int status;

  User(
    this.email,
    this.password,
    this.firstName,
    this.name,
    this.birthDay,
    this.genderId,
    this.type,
    this.avatar,
    this.cover,
    this.description,
    this.created,
    this.updated,
    this.status,
  );

  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'],
        firstName = json['firstName'],
        name = json['name'],
        birthDay = json['birthDay'],
        genderId = json['genderId'],
        type = json['type'],
        avatar = json['avatar'],
        cover = json['cover'],
        description = json['description'],
        created = json['created'],
        updated = json['updated'],
        status = json['status'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'firstName': firstName,
        'name': name,
        'birthDay': birthDay,
        'genderId': genderId,
        'type': type,
        'avatar': avatar,
        'cover': cover,
        'description': description,
        'created': created,
        'updated': updated,
        'status': status,
      };
}
