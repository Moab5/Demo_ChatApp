import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class PixelFormImage {
  String id;
  String filename;
  String? title;

  @JsonKey(name: 'url_full_size')
  String urlFullSize;

  @JsonKey(name: 'url_small_size')
  String urlSmallSize;

  PixelFormImage({
    this.title,
    required this.id,
    required this.filename,
    required this.urlFullSize,
    required this.urlSmallSize
  });

  factory PixelFormImage.fromJson(Map<String, dynamic> json) =>
      _$PixelFormImageFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PixelFormImageToJson(this);
}