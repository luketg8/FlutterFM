import 'package:freezed_annotation/freezed_annotation.dart';

part 'lastfm_image.freezed.dart';
part 'lastfm_image.g.dart';

@freezed
class LastFMImage with _$LastFMImage {
  factory LastFMImage({
    @JsonKey(name: '#text') required String text,
    required String size,
  }) = _LastFMImage;

  factory LastFMImage.fromJson(Map<String, dynamic> json) =>
      _$LastFMImageFromJson(json);
}

extension ListLastFMImageX on List<LastFMImage> {
  String? imageUrlForSize(String size) =>
      firstWhereOrNull((image) => image.size == size && image.text.isNotEmpty)
          ?.text;
}
