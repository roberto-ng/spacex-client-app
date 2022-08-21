// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => Launch(
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['staticFireDateUtc'] as String?,
      staticFireDateUnix: json['staticFireDateUnix'] as int?,
      tdb: json['tdb'] as bool?,
      net: json['net'] as bool?,
      window: json['window'] as int?,
      rocket: json['rocket'] as String?,
      success: json['success'] as bool?,
      details: json['details'] as String?,
      ships: (json['ships'] as List<dynamic>).map((e) => e as String).toList(),
      capsules:
          (json['capsules'] as List<dynamic>).map((e) => e as String).toList(),
      payloads:
          (json['payloads'] as List<dynamic>).map((e) => e as String).toList(),
      launchpad: json['launchpad'] as String?,
      autoUpdate: json['autoUpdate'] as bool?,
      flightNumber: json['flightNumber'] as int?,
      name: json['name'] as String?,
      dateUtc: json['dateUtc'] as String?,
      dateUnix: json['dateUnix'] as int?,
      dateLocal: json['dateLocal'] as String?,
      datePrecision: json['datePrecision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>)
          .map((e) => Cores.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'links': instance.links,
      'staticFireDateUtc': instance.staticFireDateUtc,
      'staticFireDateUnix': instance.staticFireDateUnix,
      'tdb': instance.tdb,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'details': instance.details,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'autoUpdate': instance.autoUpdate,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc,
      'dateUnix': instance.dateUnix,
      'dateLocal': instance.dateLocal,
      'datePrecision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'id': instance.id,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      reddit: json['reddit'] == null
          ? null
          : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
      flickr: json['flickr'] == null
          ? null
          : Flickr.fromJson(json['flickr'] as Map<String, dynamic>),
      presskit: json['presskit'] as String?,
      webcast: json['webcast'] as String?,
      youtubeId: json['youtubeId'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'flickr': instance.flickr,
      'presskit': instance.presskit,
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Reddit _$RedditFromJson(Map<String, dynamic> json) => Reddit(
      campaign: json['campaign'] as String?,
      launch: json['launch'] as String?,
      media: json['media'] as String?,
      recovery: json['recovery'] as String?,
    );

Map<String, dynamic> _$RedditToJson(Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'media': instance.media,
      'recovery': instance.recovery,
    };

Flickr _$FlickrFromJson(Map<String, dynamic> json) => Flickr(
      small: (json['small'] as List<dynamic>).map((e) => e as String).toList(),
      original:
          (json['original'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FlickrToJson(Flickr instance) => <String, dynamic>{
      'small': instance.small,
      'original': instance.original,
    };

Cores _$CoresFromJson(Map<String, dynamic> json) => Cores(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landingAttempt'] as bool?,
      landingSuccess: json['landingSuccess'] as bool?,
      landingType: json['landingType'] as String?,
      landpad: json['landpad'] as String?,
    );

Map<String, dynamic> _$CoresToJson(Cores instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landingAttempt': instance.landingAttempt,
      'landingSuccess': instance.landingSuccess,
      'landingType': instance.landingType,
      'landpad': instance.landpad,
    };
