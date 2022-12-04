// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_video')
  String? get timeVideo => throw _privateConstructorUsedError;
  Channel? get channel => throw _privateConstructorUsedError;
  String? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_published')
  String? get timePublished => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_badge')
  bool? get verifiedBadge => throw _privateConstructorUsedError;
  String? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call(
      {String? title,
      String? link,
      String? thumbnail,
      @JsonKey(name: 'time_video') String? timeVideo,
      Channel? channel,
      String? views,
      @JsonKey(name: 'time_published') String? timePublished,
      String? snippet,
      @JsonKey(name: 'verified_badge') bool? verifiedBadge,
      String? extensions});

  $ChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? timeVideo = freezed,
    Object? channel = freezed,
    Object? views = freezed,
    Object? timePublished = freezed,
    Object? snippet = freezed,
    Object? verifiedBadge = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      timeVideo: freezed == timeVideo
          ? _value.timeVideo
          : timeVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      timePublished: freezed == timePublished
          ? _value.timePublished
          : timePublished // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: freezed == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedBadge: freezed == verifiedBadge
          ? _value.verifiedBadge
          : verifiedBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$_VideosCopyWith(_$_Videos value, $Res Function(_$_Videos) then) =
      __$$_VideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? link,
      String? thumbnail,
      @JsonKey(name: 'time_video') String? timeVideo,
      Channel? channel,
      String? views,
      @JsonKey(name: 'time_published') String? timePublished,
      String? snippet,
      @JsonKey(name: 'verified_badge') bool? verifiedBadge,
      String? extensions});

  @override
  $ChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$_VideosCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$_Videos>
    implements _$$_VideosCopyWith<$Res> {
  __$$_VideosCopyWithImpl(_$_Videos _value, $Res Function(_$_Videos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? timeVideo = freezed,
    Object? channel = freezed,
    Object? views = freezed,
    Object? timePublished = freezed,
    Object? snippet = freezed,
    Object? verifiedBadge = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$_Videos(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      timeVideo: freezed == timeVideo
          ? _value.timeVideo
          : timeVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      timePublished: freezed == timePublished
          ? _value.timePublished
          : timePublished // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: freezed == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedBadge: freezed == verifiedBadge
          ? _value.verifiedBadge
          : verifiedBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Videos implements _Videos {
  const _$_Videos(
      {this.title,
      this.link,
      this.thumbnail,
      @JsonKey(name: 'time_video') this.timeVideo,
      this.channel,
      this.views,
      @JsonKey(name: 'time_published') this.timePublished,
      this.snippet,
      @JsonKey(name: 'verified_badge') this.verifiedBadge,
      this.extensions});

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: 'time_video')
  final String? timeVideo;
  @override
  final Channel? channel;
  @override
  final String? views;
  @override
  @JsonKey(name: 'time_published')
  final String? timePublished;
  @override
  final String? snippet;
  @override
  @JsonKey(name: 'verified_badge')
  final bool? verifiedBadge;
  @override
  final String? extensions;

  @override
  String toString() {
    return 'Videos(title: $title, link: $link, thumbnail: $thumbnail, timeVideo: $timeVideo, channel: $channel, views: $views, timePublished: $timePublished, snippet: $snippet, verifiedBadge: $verifiedBadge, extensions: $extensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Videos &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.timeVideo, timeVideo) ||
                other.timeVideo == timeVideo) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.timePublished, timePublished) ||
                other.timePublished == timePublished) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.verifiedBadge, verifiedBadge) ||
                other.verifiedBadge == verifiedBadge) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      link,
      thumbnail,
      timeVideo,
      channel,
      views,
      timePublished,
      snippet,
      verifiedBadge,
      extensions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      __$$_VideosCopyWithImpl<_$_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos(
      {final String? title,
      final String? link,
      final String? thumbnail,
      @JsonKey(name: 'time_video') final String? timeVideo,
      final Channel? channel,
      final String? views,
      @JsonKey(name: 'time_published') final String? timePublished,
      final String? snippet,
      @JsonKey(name: 'verified_badge') final bool? verifiedBadge,
      final String? extensions}) = _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

  @override
  String? get title;
  @override
  String? get link;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: 'time_video')
  String? get timeVideo;
  @override
  Channel? get channel;
  @override
  String? get views;
  @override
  @JsonKey(name: 'time_published')
  String? get timePublished;
  @override
  String? get snippet;
  @override
  @JsonKey(name: 'verified_badge')
  bool? get verifiedBadge;
  @override
  String? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  @JsonKey(name: 'channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_link')
  String? get channelLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_image')
  String? get channelImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'channel_link') String? channelLink,
      @JsonKey(name: 'channel_image') String? channelImage});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = freezed,
    Object? channelLink = freezed,
    Object? channelImage = freezed,
  }) {
    return _then(_value.copyWith(
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLink: freezed == channelLink
          ? _value.channelLink
          : channelLink // ignore: cast_nullable_to_non_nullable
              as String?,
      channelImage: freezed == channelImage
          ? _value.channelImage
          : channelImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$_ChannelCopyWith(
          _$_Channel value, $Res Function(_$_Channel) then) =
      __$$_ChannelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'channel_link') String? channelLink,
      @JsonKey(name: 'channel_image') String? channelImage});
}

/// @nodoc
class __$$_ChannelCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$_Channel>
    implements _$$_ChannelCopyWith<$Res> {
  __$$_ChannelCopyWithImpl(_$_Channel _value, $Res Function(_$_Channel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = freezed,
    Object? channelLink = freezed,
    Object? channelImage = freezed,
  }) {
    return _then(_$_Channel(
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLink: freezed == channelLink
          ? _value.channelLink
          : channelLink // ignore: cast_nullable_to_non_nullable
              as String?,
      channelImage: freezed == channelImage
          ? _value.channelImage
          : channelImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Channel implements _Channel {
  const _$_Channel(
      {@JsonKey(name: 'channel_name') this.channelName,
      @JsonKey(name: 'channel_link') this.channelLink,
      @JsonKey(name: 'channel_image') this.channelImage});

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelFromJson(json);

  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
  @override
  @JsonKey(name: 'channel_link')
  final String? channelLink;
  @override
  @JsonKey(name: 'channel_image')
  final String? channelImage;

  @override
  String toString() {
    return 'Channel(channelName: $channelName, channelLink: $channelLink, channelImage: $channelImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Channel &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelLink, channelLink) ||
                other.channelLink == channelLink) &&
            (identical(other.channelImage, channelImage) ||
                other.channelImage == channelImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channelName, channelLink, channelImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      __$$_ChannelCopyWithImpl<_$_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {@JsonKey(name: 'channel_name') final String? channelName,
      @JsonKey(name: 'channel_link') final String? channelLink,
      @JsonKey(name: 'channel_image') final String? channelImage}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  @JsonKey(name: 'channel_name')
  String? get channelName;
  @override
  @JsonKey(name: 'channel_link')
  String? get channelLink;
  @override
  @JsonKey(name: 'channel_image')
  String? get channelImage;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
