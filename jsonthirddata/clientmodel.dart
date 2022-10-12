import 'package:json_annotation/json_annotation.dart';
part 'clientmodel.g.dart';

@JsonSerializable()
class ClientModel {
  final String? client_type;
  final int? client_id;
  final FeatureClients? feature_clients;
  final List<Clients?> clients;
  // final List<ClientsSecond?> clients;
  ClientModel(
      {this.client_type,
      this.client_id,
      required this.feature_clients,
      required this.clients});
  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  // get clientmodel => null;
  Map<String, dynamic> toJson() => _$ClientModelToJson(this);
}

@JsonSerializable()
class FeatureClients {
List<Clients>? clients;
FeatureClients(this.clients);
  factory FeatureClients.fromJson(Map<String, dynamic> json) =>
      _$FeatureClientsFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureClientsToJson(this);
}

@JsonSerializable()
class Clients {
  final String? id;
  final bool? isActive;
  final int? age;
  final String? gender;
  final String? name;
  final String? company;
  final String? email;
  final String? address;
  final String? phone;

  Clients(this.id, this.isActive, this.age, this.gender, this.name,
      this.company, this.email, this.address, this.phone);

  factory Clients.fromJson(Map<String, dynamic> json) =>
      _$ClientsFromJson(json);

  Map<String, dynamic> toJson() => _$ClientsToJson(this); // Deserializable;
}

// @JsonSerializable()
// class Item {
//   final String? id;
//   final String? type;
//   final String? name;
//   final double? ppu;
//   final Batters? batters;
//   final List<Batter>? topping;
//   Item(this.id, this.type, this.name, this.ppu, this.batters, this.topping);
//   factory Item.fromJson(Map<String,dynamic> json)=>_$ItemFromJson(json);
//   Map<String, dynamic> toJson()=>_$ItemToJson(this);//
// }

// @JsonSerializable()
// class Batters {
//   final List<Batter>? batter;
//   Batters(this.batter);
//   factory Batters.fromJson(Map<String,dynamic> json)=>_$BattersFromJson(json);
//   Map<String, dynamic> toJson()=>_$BattersToJson(this);//
// }
//
// @JsonSerializable()
// class Batter {
//   final String? id;
//   final String? type;
//   Batter(this.id, this.type);
//   factory Batter.fromJson(Map<String,dynamic> json)=>_$BatterFromJson(json);
//   Map<String, dynamic> toJson()=>_$BatterToJson(this);//
// }

// import 'package:json_annotation/json_annotation.dart';
// part 'clientmodel.g.dart';
// @JsonSerializable()
// class ClientData{
//   final String? client_type;
//   final int? client_id;
//   final FeatureClients? clients;
//   final List<Clients>? client;
//   ClientData(this.client_type, this.client_id, this.clients,this.client);
//   factory ClientData.fromJson(Map<String,dynamic> json) =>$ClientDataFromJson(json);
//   Map<String, dynamic> toJson() => _$ClientDataToJson(this);
// }
//
//
//
//
// @JsonSerializable()
// class FeatureClients {
//   final List<Clients>? clients;
//   FeatureClients(this.clients);
//   factory FeatureClients.fromJson(Map<String,dynamic> json) =>FeatureClientsFromJson(json);
//   Map<String, dynamic> toJson() => FeatureClientsToJson(this);
// }
//
//
//
//
// @JsonSerializable()
// class Clients {
//   final int? id;
//   final String? isActive;
//   final int? age;
//   final String? name;
//   final String? gender;
//   final String? company;
//   final String? email;
//   final int? phone;
//   final String? address;
//   const Clients(this.id, this.isActive, this.age, this.name, this.gender,
//       this.company, this.email, this.phone, this.address);
//   factory Clients.fromJson(Map<String,dynamic> json) =>ClientsFromJson(json);
//   Map<String, dynamic> toJson() => ClientsToJson(this);
// }
