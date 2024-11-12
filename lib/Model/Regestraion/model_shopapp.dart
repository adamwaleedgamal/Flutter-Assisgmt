class ModelRegistration {
  String token;

  ModelRegistration({required this.token});

  factory ModelRegistration.fromJson(Map<String, dynamic> json) {
    return ModelRegistration(token: json['status']);
  }
}