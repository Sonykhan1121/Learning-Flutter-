import 'package:flutter30dayschallenge/pages/youtube_search/model/item_data.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/model/page_info_data.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/youtube_search_page.dart';

class YoutubeSearchModel {
  final String? kind;
  final String? etag;
  final String? nextPageToken;
  final String? regionCode;
  final PageInfoData? pageInfo;
  final List<ItemData>? items;

  YoutubeSearchModel({
    this.kind,
    this.etag,
    this.nextPageToken,
    this.regionCode,
    this.pageInfo,
    this.items,
  });
  factory YoutubeSearchModel.fromJson(Map<String,dynamic> json)
  {
    // final all = json['items'] as List<dynamic>? ?? [];
    List<ItemData> items = (json['items'] as List<dynamic>).map((value)=>ItemData.fromJson(value)).toList();
    return YoutubeSearchModel(
      kind: json['kind'],
      etag:json['etag'],
      nextPageToken: json['nextPageToken'],
      regionCode: json['regionCode'],
      pageInfo: PageInfoData.fronJson(json['pageInfo']),
      items:items,
    );
  }

}
