// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) => ClientModel(
      client_type: json['client_type'] as String?,
      client_id: json['client_id'] as int?,
      feature_clients: json['feature_clients'] == null
          ? null
          : FeatureClients.fromJson(
              json['feature_clients'] as Map<String, dynamic>),
      clients: (json['clients'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Clients.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'client_type': instance.client_type,
      'client_id': instance.client_id,
      'feature_clients': instance.feature_clients,
      'clients': instance.clients,
    };

FeatureClients _$FeatureClientsFromJson(Map<String, dynamic> json) =>
    FeatureClients(
      (json['clients'] as List<dynamic>?)
          ?.map((e) => Clients.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeatureClientsToJson(FeatureClients instance) =>
    <String, dynamic>{
      'clients': instance.clients,
    };

Clients _$ClientsFromJson(Map<String, dynamic> json) => Clients(
      json['id'] as String?,
      json['isActive'] as bool?,
      json['age'] as int?,
      json['gender'] as String?,
      json['name'] as String?,
      json['company'] as String?,
      json['email'] as String?,
      json['address'] as String?,
      json['phone'] as String?,
    );

Map<String, dynamic> _$ClientsToJson(Clients instance) => <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'age': instance.age,
      'gender': instance.gender,
      'name': instance.name,
      'company': instance.company,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
    };
