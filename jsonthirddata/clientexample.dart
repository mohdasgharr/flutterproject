import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
import 'dart:convert';
import 'package:uitaskfinal/clientmodel.dart';

import 'clientmodel.dart';

class ClientExample extends StatefulWidget {
  const ClientExample({Key? key}) : super(key: key);
  @override
  _ClientExampleState createState() => _ClientExampleState();
}
class _ClientExampleState extends State<ClientExample> {
  // StudentModel? s1;
  ClientModel? _data;
  bool istrue=false;
  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<ClientModel?> readJson() async  {
    final String response = await rootBundle.loadString('assets/clientobject.json') ;
    final   respons = json.decode(response);
    // setState((){
      _data = ClientModel.fromJson(respons);
      istrue=true;
      // return respons.map((e) => StudentModel. romJson(e?)).toList();
    // });
    print(_data?.feature_clients?.clients?[0].company);
    print(_data?.client_type.toString());
    print(_data?.client_id.toString());
    // print(_data?.feature_clients?.clients?[1].age);
    print(_data?.clients?[0]?.name.toString());
    print(_data?.clients?[0]?.age?.toDouble());
    print(_data?.clients?[1]?.age?.toDouble());
    // print(_data?.clients?[0]?.age);
    // print(_data?.clients?[0]?.age);
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
          Text("clienttype:""      "'${_data?.client_type.toString()}'),
          Text("client id:""      "'${_data?.client_id.toString()}'),

          SizedBox(height: 20,),


          Text("id:""   "'${_data?.feature_clients?.clients?[0].id}'),
          Text("age:""   "'${_data?.feature_clients?.clients?[0].age}'),
          Text("name:""   "'${_data?.feature_clients?.clients?[0].name}'),
          Text("company:""   "'${_data?.feature_clients?.clients?[0].company}'),
          Text("addres:""    "'${_data?.feature_clients?.clients?[0].address}',style: TextStyle(color: Colors.red),),
          Text("isActive:""     "'${_data?.feature_clients?.clients?[0].isActive}'),
          Text("phone:""    "'${_data?.feature_clients?.clients?[0].phone}'),

        SizedBox(height: 20,),

        Text('${_data?.clients?[1]?.age}'),
          Text('${_data?.clients?[1]?.name}'),
          Text('${_data?.clients?[1]?.phone}'),
          Text('${_data?.clients?[1]?.address}'),
          Text('${_data?.clients?[1]?.isActive}'),
          Text('${_data?.clients?[1]?.id}'),
          Text('${_data?.clients?[1]?.email}'),
          Text('${_data?.clients?[1]?.gender}'),
          // Text('${_data?.feature_clients?.clients?[1].name}'),
      ]
        ),
      ),
    );
  }
}