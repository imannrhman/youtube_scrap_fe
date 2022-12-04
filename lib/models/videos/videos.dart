// To parse this JSON data, do
//
//     final videos = videosFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'videos.freezed.dart';
part 'videos.g.dart';

List<Videos> videosFromJson(String str) => List<Videos>.from(json.decode(str).map((x) => Videos.fromJson(x)));

String videosToJson(List<Videos> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    String? title,
    String? link,
    String? thumbnail,
    @JsonKey(name: 'time_video')
    String? timeVideo,
    Channel? channel,
    String? views,
    @JsonKey(name: 'time_published')
    String? timePublished,
    String? snippet,
    @JsonKey(name: 'verified_badge')
    bool? verifiedBadge,
    String? extensions,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  const factory Channel({
    @JsonKey(name: 'channel_name')
    String? channelName,
    @JsonKey(name: 'channel_link')
    String? channelLink,
    @JsonKey(name: 'channel_image')
    String? channelImage,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}
