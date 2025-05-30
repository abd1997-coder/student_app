class PaginationData {
  final int count;
  final int? pagesCount;

  PaginationData({
    this.count = 1,
    this.pagesCount = 1,
  });

  factory PaginationData.fromJson(Map<String, dynamic> json) => PaginationData(
        count: json["count"],
        pagesCount: json["pages_count"],
      );

  Map<String, dynamic> toJson() => <String, int?>{
        "count": count,
        "pages_count": pagesCount,
      };
}
