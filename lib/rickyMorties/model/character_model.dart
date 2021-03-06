import 'package:json_annotation/json_annotation.dart';

import '../../core/model/base_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Location? origin;
  Location? location;
  String? image;
  List<String?>? episode;
  String? url;
  DateTime? created;
  CharacterModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return _$CharacterModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CharacterModelToJson(this);
  }
}

@JsonSerializable()
class BaseResponseCharacter extends BaseResponseModel {
  List<CharacterModel>? results;

  BaseResponseCharacter({this.results});

  factory BaseResponseCharacter.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseCharacterFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BaseResponseCharacterToJson(this);
  }
}

class Location {
  Location({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
