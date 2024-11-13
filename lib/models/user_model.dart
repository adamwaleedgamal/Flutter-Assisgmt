class Regestraion
{
  bool userdata;
  Regestraion({required this.userdata});
  factory Regestraion.fromjson(Map json)
  {
    return Regestraion(userdata:json["status"]);
  }
}