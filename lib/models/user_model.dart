class user_model
{
  bool userdata;
  user_model({required this.userdata});
  factory user_model.fromjson(Map json)
  {
    return user_model(userdata:json["status"]);
  }
}