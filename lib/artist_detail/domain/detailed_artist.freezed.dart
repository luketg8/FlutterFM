// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailedArtist _$DetailedArtistFromJson(Map<String, dynamic> json) {
  return _DetailedArtist.fromJson(json);
}

/// @nodoc
class _$DetailedArtistTearOff {
  const _$DetailedArtistTearOff();

  _DetailedArtist call(
      {required String mbid,
      required String name,
      required String url,
      required ArtistStats stats,
      required ArtistBio bio,
      required ArtistTags tags,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool ontour}) {
    return _DetailedArtist(
      mbid: mbid,
      name: name,
      url: url,
      stats: stats,
      bio: bio,
      tags: tags,
      streamable: streamable,
      ontour: ontour,
    );
  }

  DetailedArtist fromJson(Map<String, Object?> json) {
    return DetailedArtist.fromJson(json);
  }
}

/// @nodoc
const $DetailedArtist = _$DetailedArtistTearOff();

/// @nodoc
mixin _$DetailedArtist {
  String get mbid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  ArtistStats get stats => throw _privateConstructorUsedError;
  ArtistBio get bio => throw _privateConstructorUsedError;
  ArtistTags get tags => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get ontour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedArtistCopyWith<DetailedArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedArtistCopyWith<$Res> {
  factory $DetailedArtistCopyWith(
          DetailedArtist value, $Res Function(DetailedArtist) then) =
      _$DetailedArtistCopyWithImpl<$Res>;
  $Res call(
      {String mbid,
      String name,
      String url,
      ArtistStats stats,
      ArtistBio bio,
      ArtistTags tags,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool ontour});

  $ArtistStatsCopyWith<$Res> get stats;
  $ArtistBioCopyWith<$Res> get bio;
  $ArtistTagsCopyWith<$Res> get tags;
}

/// @nodoc
class _$DetailedArtistCopyWithImpl<$Res>
    implements $DetailedArtistCopyWith<$Res> {
  _$DetailedArtistCopyWithImpl(this._value, this._then);

  final DetailedArtist _value;
  // ignore: unused_field
  final $Res Function(DetailedArtist) _then;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? stats = freezed,
    Object? bio = freezed,
    Object? tags = freezed,
    Object? streamable = freezed,
    Object? ontour = freezed,
  }) {
    return _then(_value.copyWith(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as ArtistStats,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as ArtistBio,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ArtistTags,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
      ontour: ontour == freezed
          ? _value.ontour
          : ontour // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ArtistStatsCopyWith<$Res> get stats {
    return $ArtistStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }

  @override
  $ArtistBioCopyWith<$Res> get bio {
    return $ArtistBioCopyWith<$Res>(_value.bio, (value) {
      return _then(_value.copyWith(bio: value));
    });
  }

  @override
  $ArtistTagsCopyWith<$Res> get tags {
    return $ArtistTagsCopyWith<$Res>(_value.tags, (value) {
      return _then(_value.copyWith(tags: value));
    });
  }
}

/// @nodoc
abstract class _$DetailedArtistCopyWith<$Res>
    implements $DetailedArtistCopyWith<$Res> {
  factory _$DetailedArtistCopyWith(
          _DetailedArtist value, $Res Function(_DetailedArtist) then) =
      __$DetailedArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mbid,
      String name,
      String url,
      ArtistStats stats,
      ArtistBio bio,
      ArtistTags tags,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool ontour});

  @override
  $ArtistStatsCopyWith<$Res> get stats;
  @override
  $ArtistBioCopyWith<$Res> get bio;
  @override
  $ArtistTagsCopyWith<$Res> get tags;
}

/// @nodoc
class __$DetailedArtistCopyWithImpl<$Res>
    extends _$DetailedArtistCopyWithImpl<$Res>
    implements _$DetailedArtistCopyWith<$Res> {
  __$DetailedArtistCopyWithImpl(
      _DetailedArtist _value, $Res Function(_DetailedArtist) _then)
      : super(_value, (v) => _then(v as _DetailedArtist));

  @override
  _DetailedArtist get _value => super._value as _DetailedArtist;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? stats = freezed,
    Object? bio = freezed,
    Object? tags = freezed,
    Object? streamable = freezed,
    Object? ontour = freezed,
  }) {
    return _then(_DetailedArtist(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as ArtistStats,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as ArtistBio,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ArtistTags,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
      ontour: ontour == freezed
          ? _value.ontour
          : ontour // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailedArtist implements _DetailedArtist {
  _$_DetailedArtist(
      {required this.mbid,
      required this.name,
      required this.url,
      required this.stats,
      required this.bio,
      required this.tags,
      @JsonKey(fromJson: ConverterUtils.parseBool) required this.streamable,
      @JsonKey(fromJson: ConverterUtils.parseBool) required this.ontour});

  factory _$_DetailedArtist.fromJson(Map<String, dynamic> json) =>
      _$$_DetailedArtistFromJson(json);

  @override
  final String mbid;
  @override
  final String name;
  @override
  final String url;
  @override
  final ArtistStats stats;
  @override
  final ArtistBio bio;
  @override
  final ArtistTags tags;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  final bool streamable;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  final bool ontour;

  @override
  String toString() {
    return 'DetailedArtist(mbid: $mbid, name: $name, url: $url, stats: $stats, bio: $bio, tags: $tags, streamable: $streamable, ontour: $ontour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailedArtist &&
            (identical(other.mbid, mbid) || other.mbid == mbid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.streamable, streamable) ||
                other.streamable == streamable) &&
            (identical(other.ontour, ontour) || other.ontour == ontour));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, mbid, name, url, stats, bio, tags, streamable, ontour);

  @JsonKey(ignore: true)
  @override
  _$DetailedArtistCopyWith<_DetailedArtist> get copyWith =>
      __$DetailedArtistCopyWithImpl<_DetailedArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailedArtistToJson(this);
  }
}

abstract class _DetailedArtist implements DetailedArtist {
  factory _DetailedArtist(
          {required String mbid,
          required String name,
          required String url,
          required ArtistStats stats,
          required ArtistBio bio,
          required ArtistTags tags,
          @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
          @JsonKey(fromJson: ConverterUtils.parseBool) required bool ontour}) =
      _$_DetailedArtist;

  factory _DetailedArtist.fromJson(Map<String, dynamic> json) =
      _$_DetailedArtist.fromJson;

  @override
  String get mbid;
  @override
  String get name;
  @override
  String get url;
  @override
  ArtistStats get stats;
  @override
  ArtistBio get bio;
  @override
  ArtistTags get tags;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get ontour;
  @override
  @JsonKey(ignore: true)
  _$DetailedArtistCopyWith<_DetailedArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistStats _$ArtistStatsFromJson(Map<String, dynamic> json) {
  return _ArtistStats.fromJson(json);
}

/// @nodoc
class _$ArtistStatsTearOff {
  const _$ArtistStatsTearOff();

  _ArtistStats call({required String listeners, required String playcount}) {
    return _ArtistStats(
      listeners: listeners,
      playcount: playcount,
    );
  }

  ArtistStats fromJson(Map<String, Object?> json) {
    return ArtistStats.fromJson(json);
  }
}

/// @nodoc
const $ArtistStats = _$ArtistStatsTearOff();

/// @nodoc
mixin _$ArtistStats {
  String get listeners => throw _privateConstructorUsedError;
  String get playcount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistStatsCopyWith<ArtistStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStatsCopyWith<$Res> {
  factory $ArtistStatsCopyWith(
          ArtistStats value, $Res Function(ArtistStats) then) =
      _$ArtistStatsCopyWithImpl<$Res>;
  $Res call({String listeners, String playcount});
}

/// @nodoc
class _$ArtistStatsCopyWithImpl<$Res> implements $ArtistStatsCopyWith<$Res> {
  _$ArtistStatsCopyWithImpl(this._value, this._then);

  final ArtistStats _value;
  // ignore: unused_field
  final $Res Function(ArtistStats) _then;

  @override
  $Res call({
    Object? listeners = freezed,
    Object? playcount = freezed,
  }) {
    return _then(_value.copyWith(
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      playcount: playcount == freezed
          ? _value.playcount
          : playcount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistStatsCopyWith<$Res>
    implements $ArtistStatsCopyWith<$Res> {
  factory _$ArtistStatsCopyWith(
          _ArtistStats value, $Res Function(_ArtistStats) then) =
      __$ArtistStatsCopyWithImpl<$Res>;
  @override
  $Res call({String listeners, String playcount});
}

/// @nodoc
class __$ArtistStatsCopyWithImpl<$Res> extends _$ArtistStatsCopyWithImpl<$Res>
    implements _$ArtistStatsCopyWith<$Res> {
  __$ArtistStatsCopyWithImpl(
      _ArtistStats _value, $Res Function(_ArtistStats) _then)
      : super(_value, (v) => _then(v as _ArtistStats));

  @override
  _ArtistStats get _value => super._value as _ArtistStats;

  @override
  $Res call({
    Object? listeners = freezed,
    Object? playcount = freezed,
  }) {
    return _then(_ArtistStats(
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      playcount: playcount == freezed
          ? _value.playcount
          : playcount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistStats implements _ArtistStats {
  _$_ArtistStats({required this.listeners, required this.playcount});

  factory _$_ArtistStats.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistStatsFromJson(json);

  @override
  final String listeners;
  @override
  final String playcount;

  @override
  String toString() {
    return 'ArtistStats(listeners: $listeners, playcount: $playcount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistStats &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners) &&
            (identical(other.playcount, playcount) ||
                other.playcount == playcount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listeners, playcount);

  @JsonKey(ignore: true)
  @override
  _$ArtistStatsCopyWith<_ArtistStats> get copyWith =>
      __$ArtistStatsCopyWithImpl<_ArtistStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistStatsToJson(this);
  }
}

abstract class _ArtistStats implements ArtistStats {
  factory _ArtistStats({required String listeners, required String playcount}) =
      _$_ArtistStats;

  factory _ArtistStats.fromJson(Map<String, dynamic> json) =
      _$_ArtistStats.fromJson;

  @override
  String get listeners;
  @override
  String get playcount;
  @override
  @JsonKey(ignore: true)
  _$ArtistStatsCopyWith<_ArtistStats> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistBio _$ArtistBioFromJson(Map<String, dynamic> json) {
  return _ArtistBio.fromJson(json);
}

/// @nodoc
class _$ArtistBioTearOff {
  const _$ArtistBioTearOff();

  _ArtistBio call({required String summary, required String content}) {
    return _ArtistBio(
      summary: summary,
      content: content,
    );
  }

  ArtistBio fromJson(Map<String, Object?> json) {
    return ArtistBio.fromJson(json);
  }
}

/// @nodoc
const $ArtistBio = _$ArtistBioTearOff();

/// @nodoc
mixin _$ArtistBio {
  String get summary => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistBioCopyWith<ArtistBio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistBioCopyWith<$Res> {
  factory $ArtistBioCopyWith(ArtistBio value, $Res Function(ArtistBio) then) =
      _$ArtistBioCopyWithImpl<$Res>;
  $Res call({String summary, String content});
}

/// @nodoc
class _$ArtistBioCopyWithImpl<$Res> implements $ArtistBioCopyWith<$Res> {
  _$ArtistBioCopyWithImpl(this._value, this._then);

  final ArtistBio _value;
  // ignore: unused_field
  final $Res Function(ArtistBio) _then;

  @override
  $Res call({
    Object? summary = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistBioCopyWith<$Res> implements $ArtistBioCopyWith<$Res> {
  factory _$ArtistBioCopyWith(
          _ArtistBio value, $Res Function(_ArtistBio) then) =
      __$ArtistBioCopyWithImpl<$Res>;
  @override
  $Res call({String summary, String content});
}

/// @nodoc
class __$ArtistBioCopyWithImpl<$Res> extends _$ArtistBioCopyWithImpl<$Res>
    implements _$ArtistBioCopyWith<$Res> {
  __$ArtistBioCopyWithImpl(_ArtistBio _value, $Res Function(_ArtistBio) _then)
      : super(_value, (v) => _then(v as _ArtistBio));

  @override
  _ArtistBio get _value => super._value as _ArtistBio;

  @override
  $Res call({
    Object? summary = freezed,
    Object? content = freezed,
  }) {
    return _then(_ArtistBio(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistBio implements _ArtistBio {
  _$_ArtistBio({required this.summary, required this.content});

  factory _$_ArtistBio.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistBioFromJson(json);

  @override
  final String summary;
  @override
  final String content;

  @override
  String toString() {
    return 'ArtistBio(summary: $summary, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistBio &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary, content);

  @JsonKey(ignore: true)
  @override
  _$ArtistBioCopyWith<_ArtistBio> get copyWith =>
      __$ArtistBioCopyWithImpl<_ArtistBio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistBioToJson(this);
  }
}

abstract class _ArtistBio implements ArtistBio {
  factory _ArtistBio({required String summary, required String content}) =
      _$_ArtistBio;

  factory _ArtistBio.fromJson(Map<String, dynamic> json) =
      _$_ArtistBio.fromJson;

  @override
  String get summary;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$ArtistBioCopyWith<_ArtistBio> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistTags _$ArtistTagsFromJson(Map<String, dynamic> json) {
  return _ArtistTags.fromJson(json);
}

/// @nodoc
class _$ArtistTagsTearOff {
  const _$ArtistTagsTearOff();

  _ArtistTags call({required List<ArtistTag> tag}) {
    return _ArtistTags(
      tag: tag,
    );
  }

  ArtistTags fromJson(Map<String, Object?> json) {
    return ArtistTags.fromJson(json);
  }
}

/// @nodoc
const $ArtistTags = _$ArtistTagsTearOff();

/// @nodoc
mixin _$ArtistTags {
  List<ArtistTag> get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistTagsCopyWith<ArtistTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistTagsCopyWith<$Res> {
  factory $ArtistTagsCopyWith(
          ArtistTags value, $Res Function(ArtistTags) then) =
      _$ArtistTagsCopyWithImpl<$Res>;
  $Res call({List<ArtistTag> tag});
}

/// @nodoc
class _$ArtistTagsCopyWithImpl<$Res> implements $ArtistTagsCopyWith<$Res> {
  _$ArtistTagsCopyWithImpl(this._value, this._then);

  final ArtistTags _value;
  // ignore: unused_field
  final $Res Function(ArtistTags) _then;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<ArtistTag>,
    ));
  }
}

/// @nodoc
abstract class _$ArtistTagsCopyWith<$Res> implements $ArtistTagsCopyWith<$Res> {
  factory _$ArtistTagsCopyWith(
          _ArtistTags value, $Res Function(_ArtistTags) then) =
      __$ArtistTagsCopyWithImpl<$Res>;
  @override
  $Res call({List<ArtistTag> tag});
}

/// @nodoc
class __$ArtistTagsCopyWithImpl<$Res> extends _$ArtistTagsCopyWithImpl<$Res>
    implements _$ArtistTagsCopyWith<$Res> {
  __$ArtistTagsCopyWithImpl(
      _ArtistTags _value, $Res Function(_ArtistTags) _then)
      : super(_value, (v) => _then(v as _ArtistTags));

  @override
  _ArtistTags get _value => super._value as _ArtistTags;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_ArtistTags(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<ArtistTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistTags implements _ArtistTags {
  _$_ArtistTags({required this.tag});

  factory _$_ArtistTags.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistTagsFromJson(json);

  @override
  final List<ArtistTag> tag;

  @override
  String toString() {
    return 'ArtistTags(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistTags &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$ArtistTagsCopyWith<_ArtistTags> get copyWith =>
      __$ArtistTagsCopyWithImpl<_ArtistTags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistTagsToJson(this);
  }
}

abstract class _ArtistTags implements ArtistTags {
  factory _ArtistTags({required List<ArtistTag> tag}) = _$_ArtistTags;

  factory _ArtistTags.fromJson(Map<String, dynamic> json) =
      _$_ArtistTags.fromJson;

  @override
  List<ArtistTag> get tag;
  @override
  @JsonKey(ignore: true)
  _$ArtistTagsCopyWith<_ArtistTags> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistTag _$ArtistTagFromJson(Map<String, dynamic> json) {
  return _ArtistTag.fromJson(json);
}

/// @nodoc
class _$ArtistTagTearOff {
  const _$ArtistTagTearOff();

  _ArtistTag call({required String name, required String url}) {
    return _ArtistTag(
      name: name,
      url: url,
    );
  }

  ArtistTag fromJson(Map<String, Object?> json) {
    return ArtistTag.fromJson(json);
  }
}

/// @nodoc
const $ArtistTag = _$ArtistTagTearOff();

/// @nodoc
mixin _$ArtistTag {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistTagCopyWith<ArtistTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistTagCopyWith<$Res> {
  factory $ArtistTagCopyWith(ArtistTag value, $Res Function(ArtistTag) then) =
      _$ArtistTagCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$ArtistTagCopyWithImpl<$Res> implements $ArtistTagCopyWith<$Res> {
  _$ArtistTagCopyWithImpl(this._value, this._then);

  final ArtistTag _value;
  // ignore: unused_field
  final $Res Function(ArtistTag) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistTagCopyWith<$Res> implements $ArtistTagCopyWith<$Res> {
  factory _$ArtistTagCopyWith(
          _ArtistTag value, $Res Function(_ArtistTag) then) =
      __$ArtistTagCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$ArtistTagCopyWithImpl<$Res> extends _$ArtistTagCopyWithImpl<$Res>
    implements _$ArtistTagCopyWith<$Res> {
  __$ArtistTagCopyWithImpl(_ArtistTag _value, $Res Function(_ArtistTag) _then)
      : super(_value, (v) => _then(v as _ArtistTag));

  @override
  _ArtistTag get _value => super._value as _ArtistTag;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ArtistTag(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistTag implements _ArtistTag {
  _$_ArtistTag({required this.name, required this.url});

  factory _$_ArtistTag.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistTagFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ArtistTag(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistTag &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  _$ArtistTagCopyWith<_ArtistTag> get copyWith =>
      __$ArtistTagCopyWithImpl<_ArtistTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistTagToJson(this);
  }
}

abstract class _ArtistTag implements ArtistTag {
  factory _ArtistTag({required String name, required String url}) =
      _$_ArtistTag;

  factory _ArtistTag.fromJson(Map<String, dynamic> json) =
      _$_ArtistTag.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ArtistTagCopyWith<_ArtistTag> get copyWith =>
      throw _privateConstructorUsedError;
}
