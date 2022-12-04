// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Videos _$$_VideosFromJson(Map<String, dynamic> json) => _$_Videos(
      title: json['title'] as String?,
      link: json['link'] as String?,
      thumbnail: json['thumbnail'] as String?,
      timeVideo: json['time_video'] as String?,
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>),
      views: json['views'] as String?,
      timePublished: json['time_published'] as String?,
      snippet: json['snippet'] as String?,
      verifiedBadge: json['verified_badge'] as bool?,
      extensions: json['extensions'] as String?,
    );

Map<String, dynamic> _$$_VideosToJson(_$_Videos instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'thumbnail': instance.thumbnail,
      'time_video': instance.timeVideo,
      'channel': instance.channel,
      'views': instance.views,
      'time_published': instance.timePublished,
      'snippet': instance.snippet,
      'verified_badge': instance.verifiedBadge,
      'extensions': instance.extensions,
    };

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => _$_Channel(
      channelName: json['channel_name'] as String?,
      channelLink: json['channel_link'] as String?,
      channelImage: json['channel_image'] as String?,
    );

Map<String, dynamic> _$$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'channel_link': instance.channelLink,
      'channel_image': instance.channelImage,
    };
