// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => ItemModel(
      json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemModelToJson(ItemModel instance) => <String, dynamic>{
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      (json['item'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'item': instance.item,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      json['id'] as String?,
      json['type'] as String?,
      json['name'] as String?,
      (json['ppu'] as num?)?.toDouble(),
      json['batters'] == null
          ? null
          : Batters.fromJson(json['batters'] as Map<String, dynamic>),
      (json['topping'] as List<dynamic>?)
          ?.map((e) => Batter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'ppu': instance.ppu,
      'batters': instance.batters,
      'topping': instance.topping,
    };

Batters _$BattersFromJson(Map<String, dynamic> json) => Batters(
      (json['batter'] as List<dynamic>?)
          ?.map((e) => Batter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BattersToJson(Batters instance) => <String, dynamic>{
      'batter': instance.batter,
    };

Batter _$BatterFromJson(Map<String, dynamic> json) => Batter(
      json['id'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$BatterToJson(Batter instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
