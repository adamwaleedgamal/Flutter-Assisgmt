import 'package:adam_waleed_0522018/models/user_model.dart';
import 'package:dio/dio.dart';

class Log_services
{
   static Dio dio=Dio();
   static Future<void> signup(name,phone,email,password)async
   {
   var res=  await dio.post("https://student.valuxapps.com/api/register",
       data: {
        "name":name,
         "phone":phone,
         "email":email,
         "password":password
       }
     );
     if(res.statusCode==200)
       {
         print(res.data);
       }
   }

   static Future<Regestraion> login(email,password)async
   {
     var res=  await dio.post("https://student.valuxapps.com/api/login",
         data: {
           "email":email,
           "password":password
         }
     );
     if(res.statusCode==200)
     {
       print(res.data);
     }
    return Regestraion.fromjson(res.data);
   }
}