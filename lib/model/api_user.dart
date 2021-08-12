class ApiUserModel {
  ApiUserModel({required this.name, this.username, required this.email});

  factory ApiUserModel.fromJson(Map<String, dynamic> json) {
    return ApiUserModel(
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }

  String name;
  String? username;
  String email;
}
