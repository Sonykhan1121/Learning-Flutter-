
class PageInfoData {
  final int? totalResults;
  final int? resultsPerPage;


  PageInfoData({this.totalResults, this.resultsPerPage});

  factory PageInfoData.fronJson(Map<String,dynamic> json)
  {
    return PageInfoData(
      totalResults: json["totalResults"],
      resultsPerPage: json["resultsPerPage"],
    );
  }
}