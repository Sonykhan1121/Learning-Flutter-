
import 'package:flutter30dayschallenge/pages/youtube_search/model/thumbnail_data.dart';

class Thumbnails{
  final ThumbnailData? def;
  final ThumbnailData? medium;
  final ThumbnailData? high;

  Thumbnails({this.def, this.medium, this.high});
  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return Thumbnails(def: ThumbnailData.fromJson(json['default']),
    medium: ThumbnailData.fromJson(json['medium']),
    high: ThumbnailData.fromJson(json['high']) );
  }
}