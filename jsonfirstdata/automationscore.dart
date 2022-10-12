import 'package:json_annotation/json_annotation.dart';
part 'automationscore.g.dart';

@JsonSerializable()
class AutomationModelscore{
  String? type;
  double? score;
  AutomationModelscore({this.type, this.score});
  factory AutomationModelscore.fromJson(Map<String, dynamic> json)=>_$AutomationModelscoreFromJson(json);
  Map<String,dynamic> toJson()=>_$AutomationModelscoreToJson(this);

}