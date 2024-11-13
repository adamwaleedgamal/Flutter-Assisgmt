class Registermodel{
  Map<String,dynamic>data;
  bool status;
  String message;
  Registermodel({required this.status,required this.message, required this.data});
  factory Registermodel.fromjson(Map<String,dynamic>json){
    return Registermodel(status: json['status'], message: json['message'], data: json['data']);
  }
}