// To parse this JSON data, do
//     final premierLeagueModel = premierLeagueModelFromJson(jsonString);
import 'dart:convert';

List<TeamModel> teamListFromJson(String str) =>
    (json.decode(str)['teams'] as List)
        .map((item) => TeamModel.fromJson(item))
        .toList();

String teamListToJson(List<TeamModel> data) =>
    json.encode(data.map((item) => item.toJson()).toList());

PremierLeagueModel premierLeagueModelFromJson(String str) =>
    PremierLeagueModel.fromJson(json.decode(str));
String premierLeagueModelToJson(PremierLeagueModel data) =>
    json.encode(data.toJson());

class PremierLeagueModel {
  List<TeamModel> teams;
  PremierLeagueModel({required this.teams});
  factory PremierLeagueModel.fromJson(Map<String, dynamic> json) =>
      PremierLeagueModel(
        teams: List<TeamModel>.from(json["teams"].map((x) => TeamModel.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
  };
}

class TeamModel {
  String idTeam;
  String strTeam;
  String strStadium;
  String strBadge;
  String strDescriptionEn;
  TeamModel({
    required this.idTeam,
    required this.strTeam,
    required this.strStadium,
    required this.strBadge,
    required this.strDescriptionEn,
  });
  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
    idTeam: json["idTeam"] ?? "",
    strTeam: json["strTeam"] ?? "",
    strStadium: json["strStadium"] ?? "",
    strBadge: json["strBadge"] ?? "",
    strDescriptionEn: json["strDescriptionEn"] ?? "",
  );
  Map<String, dynamic> toJson() => {
    "idTeam": idTeam,
    "strTeam": strTeam,
    "strStadium": strStadium,
    "strBadge": strBadge,
    "strDescriptionEn": strDescriptionEn,
  };
}
