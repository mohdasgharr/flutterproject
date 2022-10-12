// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'automationscore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutomationModelscore _$AutomationModelscoreFromJson(
        Map<String, dynamic> json) =>
    AutomationModelscore(
      type: json['type'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AutomationModelscoreToJson(
        AutomationModelscore instance) =>
    <String, dynamic>{
      'type': instance.type,
      'score': instance.score,
    };
