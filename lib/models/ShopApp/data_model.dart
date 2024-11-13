class Shopapp_model
{
    List data;
    Shopapp_model({required this.data});
    factory Shopapp_model.fromjson(Map json)
    {
      return Shopapp_model(data: json["data"]["products"]);
    }
}