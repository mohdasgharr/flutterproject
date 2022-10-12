import 'package:json_annotation/json_annotation.dart';
//
// class ItemModel {
//  final String? id;
//   final String? name;
//   final String? type;
//  final  double? ppu;
//  final String?batters;
//   final List<Batters?> topping;
// ItemModel(this.id,this.name,this.type,this.ppu,this.batters,this.topping,);
//  factory ItemModel.fromJson(Map<String,dynamic> json) {
//    return ItemModel(id: json['id'],name: json['name'],type: json['type'],price:['ppu'],
//      batters:json['batters'], topping: (json['topping'] as List).map((e) => ItemModel.fromJson(e)).toList(),);
//  }
// }
//
// class Batters {
//   final String? type;
//  final String? id;
//  Batters({this.type,this.id});
//  factory Batters
// }

part 'itemmodel.g.dart';
@JsonSerializable()
class ItemModel{
  final Items? items;
  ItemModel(this.items);
  factory ItemModel.fromJson(Map<String,dynamic> json)=>_$ItemModelFromJson(json);
  Map<String,dynamic> toJson()=>_$ItemModelToJson(this);

}
@JsonSerializable()
class Items {
  final List<Item>? item;
  Items(this.item);
  factory Items.fromJson(Map<String,dynamic> json)=>_$ItemsFromJson(json);
  Map<String, dynamic> toJson()=>_$ItemsToJson(this);// Deserializable;
}
@JsonSerializable()
class Item {
  final String? id;
  final String? type;
  final String? name;
  final double? ppu;
  final Batters? batters;
  final List<Batter>? topping;
  Item(this.id, this.type, this.name, this.ppu, this.batters, this.topping);
  factory Item.fromJson(Map<String,dynamic> json)=>_$ItemFromJson(json);
  Map<String, dynamic> toJson()=>_$ItemToJson(this);//
}



@JsonSerializable()
class Batters {
  final List<Batter>? batter;
  Batters(this.batter);
  factory Batters.fromJson(Map<String,dynamic> json)=>_$BattersFromJson(json);
  Map<String, dynamic> toJson()=>_$BattersToJson(this);//
}

@JsonSerializable()
class Batter {
  final String? id;
  final String? type;
  Batter(this.id, this.type);
  factory Batter.fromJson(Map<String,dynamic> json)=>_$BatterFromJson(json);
  Map<String, dynamic> toJson()=>_$BatterToJson(this);//
}


// @JsonSerializable()
// class Topping {
//   String? id;
//   String? type;
//   Topping(this.id, this.type);
//   factory Topping.fromJson(Map<String,dynamic> json)=>_$ToppingFromJson(json);
//   Map<String, dynamic> toJson()=>_$ToppingToJson(this);//
//
// }