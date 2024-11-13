class data_model
{
    List data;
    data_model({required this.data});
    factory data_model.fromjson(Map json)
    {
      return data_model(data: json["data"]["products"]);
    }
}