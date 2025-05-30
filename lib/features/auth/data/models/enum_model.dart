class EnumModel {
  final List<EnumResult> results;

  EnumModel({required this.results});

  factory EnumModel.fromJson(Map<String, dynamic> json) => EnumModel(
    results:
        json["results"] == null
            ? <EnumResult>[]
            : List<EnumResult>.from(
              json["results"]!.map((dynamic x) => EnumResult.fromJson(x)),
            ),
  );
}

class EnumResult {
  final String value;
  final String? label;

  EnumResult({required this.value, this.label});

  factory EnumResult.fromJson(Map<String, dynamic> json) =>
      EnumResult(value: json["value"], label: json["label"]);

  @override
  String toString() {
    return label ?? " ";
  }
}
