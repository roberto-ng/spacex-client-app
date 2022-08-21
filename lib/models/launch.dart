import 'package:json_annotation/json_annotation.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch {
  Links links;
  String? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? tdb;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  String? details;
  List<String> ships;
  List<String> capsules;
  List<String> payloads;
  String? launchpad;
  bool? autoUpdate;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores> cores;
  String id;

  Launch({
    required this.links,
    required this.staticFireDateUtc,
    required this.staticFireDateUnix,
    required this.tdb,
    required this.net,
    required this.window,
    required this.rocket,
    required this.success,
    required this.details,
    required this.ships,
    required this.capsules,
    required this.payloads,
    required this.launchpad,
    required this.autoUpdate,
    required this.flightNumber,
    required this.name,
    required this.dateUtc,
    required this.dateUnix,
    required this.dateLocal,
    required this.datePrecision,
    required this.upcoming,
    required this.cores,
    required this.id,
  });

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchToJson(this);
}

@JsonSerializable()
class Links {
  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  String? presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links({
    required this.patch,
    required this.reddit,
    required this.flickr,
    required this.presskit,
    required this.webcast,
    required this.youtubeId,
    required this.article,
    required this.wikipedia,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Patch {
  String? small;
  String? large;

  Patch({required this.small, required this.large});

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}

@JsonSerializable()
class Reddit {
  String? campaign;
  String? launch;
  String? media;
  String? recovery;

  Reddit({
    required this.campaign,
    required this.launch,
    required this.media,
    required this.recovery,
  });

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

  Map<String, dynamic> toJson() => _$RedditToJson(this);
}

@JsonSerializable()
class Flickr {
  List<String> small;
  List<String> original;

  Flickr({
    required this.small,
    required this.original,
  });

  factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);

  Map<String, dynamic> toJson() => _$FlickrToJson(this);
}

@JsonSerializable()
class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;
  String? landingType;
  String? landpad;

  Cores({
    required this.core,
    required this.flight,
    required this.gridfins,
    required this.legs,
    required this.reused,
    required this.landingAttempt,
    required this.landingSuccess,
    required this.landingType,
    required this.landpad,
  });

  factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);

  Map<String, dynamic> toJson() => _$CoresToJson(this);
}
