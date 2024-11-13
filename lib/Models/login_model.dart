class LoginModel {
  Map<String, dynamic> data;
  bool status;
  String message;
  LoginModel({required this.data, required this.message, required this.status});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        data: json['data'], message: json['message'], status: json['status']);
  }
}
