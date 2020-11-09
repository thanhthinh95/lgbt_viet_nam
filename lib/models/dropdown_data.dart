class DropdownData {
  String id;
  String name;


  DropdownData(
      this.id,
      this.name,
      );

  DropdownData.fromJson(Map<String, dynamic> json)
      : id = json['_id'].toString(),
        name = json['name'].toString() ;

  Map<String, dynamic> toJson() => {
    '_id': id,
    'name': name,
  };


}
