import 'package:json_annotation/json_annotation.dart';

import 'automationscore.dart';
part 'automationmodel.g.dart';

@JsonSerializable()
class AutomationModel {
  final int? id;
  final String? name;
  final List<AutomationModelscore>? scores;
  AutomationModel({this.name, this.id, this.scores});
  factory AutomationModel.fromJson(Map<String, dynamic> json)=>_$AutomationModelFromJson(json);
  Map<String,dynamic> toJson()=>_$AutomationModelToJson(this);
  String toString(){
    return '$id $name ${scores?[0].score}';
  }

}
