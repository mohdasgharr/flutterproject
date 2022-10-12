import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
import 'dart:convert';

import 'package:uitaskfinal/student_model.dart';

import 'Automationmodel.dart';
class FetchImage extends StatefulWidget {
  const FetchImage({Key? key}) : super(key: key);

  @override
  _FetchImageState createState() => _FetchImageState();
}

class _FetchImageState extends State<FetchImage> {
  StudentModel? s1;
  List<AutomationModel> _data = [];
  bool istrue=false;
  // get itemBuilder => null;
  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<AutomationModel?> readJson() async  {
    final String response = await rootBundle.loadString(
        'assets/jsonformate.json') ;
    final   respons = json.decode(response);

    _data = (respons["data"] as List)
        .map((e) => AutomationModel.fromJson(e))
        .toList();
    istrue=true;
    // return respons.map((e) => StudentModel.fromJson(e)).toList();
    print(_data);
  }
  @override
  Widget build(BuildContext context) {
    s1?.scores?[0].score;
    return Scaffold(
      body:ListView.separated(itemBuilder:
          (BuildContext context,index){
        return  ListTile(
          title: Column(children:
          _data[index].scores?.map((e) =>Text('${e.type} - ${e.score}') ).toList()?? []),
          leading: CircleAvatar(child: Text('${_data[index].id}')),
          trailing: Text('${_data[index].name}'),
        );
      },
        separatorBuilder: (BuildContext context, index)=>
            Divider(thickness: 3,),
        itemCount:_data.length,
      ),
    );
  }
}
