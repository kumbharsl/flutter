class LoginModel {
  String name;
  String phone;
  String email;
  String password;

  LoginModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });

  Map<String, String> loginMap() {
    return {
      'name': name,
      'phone': phone,
      'username': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return "{name:$name, phone:$phone,username:$email, password:$password}";
  }
}
