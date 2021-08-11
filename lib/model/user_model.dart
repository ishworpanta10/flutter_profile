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

const currentUser = UserModel(
  username: "ishworpanta10",
  age: 24,
  designation: 'Developer',
  regNo: "454 - 6780 - 656",
  email: "ishworpanta10@gmail.com",
  phone: 9843750658,
);
