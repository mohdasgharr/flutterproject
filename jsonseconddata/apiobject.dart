import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
import 'dart:convert';
import 'package:uitaskfinal/itemmodel.dart';

import 'itemmodel.dart';


class ApiObject extends StatefulWidget {
  const ApiObject({Key? key}) : super(key: key);

  @override
  _ApiObjectState createState() => _ApiObjectState();
}
class _ApiObjectState extends State<ApiObject> {
  // StudentModel? s1;
   ItemModel? _data;
  bool istrue=false;
  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<ItemModel?> readJson() async  {
    final String response = await rootBundle.loadString('assets/jsonobject.json') ;
    final   respons = json.decode(response);
setState((){
    _data = ItemModel.fromJson(respons);
    istrue=true;
    // return respons.map((e) => StudentModel. romJson(e)).toList();
  });
print(_data?.items?.item?[0].name);
    // print(_data?.items?.item?[0].batters?.batter?[0].id);
    return null;

  }
  @override
  Widget build(BuildContext context) {
    // s1?.scores?[0].score;
    return Scaffold(
      appBar: AppBar(),
     body: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child:Column(children:[
       Text('${_data?.items?.item?[0].id}'),
       Text('${_data?.items?.item?[0].name}'),
       Text('${_data?.items?.item?[0].ppu}'),
       Text('${_data?.items?.item?[0].type}'),
         Row(children:
         _data?.items?.item?[0].batters?.batter?.map((e) =>Text('${e.type} - ${e.id}') ).toList()?? []),
         // _data?.items?.item?[0].batters?.topping?.map((e) =>Text('${e.type} - ${e.id}') ).toList()?? []),
     ],

       ),
    ),
    );
  }
}

