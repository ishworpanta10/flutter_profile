class UserModel {
  const UserModel({
    required this.username,
    this.designation,
    required this.age,
    required this.regNo,
    required this.email,
    required this.phone,
  });

  final String username;
  final String? designation;
  final int age;
  final String regNo;
  final String email;
  final int phone;
}
