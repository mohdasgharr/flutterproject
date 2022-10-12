// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'automationmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutomationModel _$AutomationModelFromJson(Map<String, dynamic> json) =>
    AutomationModel(
      name: json['name'] as String?,
      id: json['id'] as int?,
      scores: (json['scores'] as List<dynamic>?)
          ?.map((e) => AutomationModelscore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutomationModelToJson(AutomationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'scores': instance.scores,
    };
