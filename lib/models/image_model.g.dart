// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PixelFormImage _$PixelFormImageFromJson(Map<String, dynamic> json) =>
    PixelFormImage(
      title: json['title'] as String?,
      id: json['id'] as String,
      filename: json['filename'] as String,
      urlFullSize: json['url_full_size'] as String,
      urlSmallSize: json['url_small_size'] as String,
    );

Map<String, dynamic> _$PixelFormImageToJson(PixelFormImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'title': instance.title,
      'url_full_size': instance.urlFullSize,
      'url_small_size': instance.urlSmallSize,
    };