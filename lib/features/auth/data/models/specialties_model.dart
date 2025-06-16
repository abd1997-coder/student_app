import '../../../../core/core.dart';

class SpecialtyModel {
  final PaginationData pagination;
  final List<SpecialtyResult> results;

  SpecialtyModel({required this.pagination, required this.results});

  factory SpecialtyModel.fromJson(Map<String, dynamic> json) => SpecialtyModel(
    pagination: PaginationData.fromJson(json["pagination"]),
    results: List<SpecialtyResult>.from(
      json["results"]!.map((dynamic x) => SpecialtyResult.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "pagination": pagination.toJson(),
    "results": results.map((x) => x.toMap()).toList(),
  };
}

class SpecialtyResult {
  final String id;
  final String? price;
  final bool? isAvailable;
  final String? image;
  final String? name;

  SpecialtyResult({
    required this.id,
    this.price,
    this.isAvailable,
    this.image,
    this.name,
  });

  factory SpecialtyResult.fromJson(Map<String, dynamic> json) =>
      SpecialtyResult(
        id: json["id"],
        price: json["price"],
        isAvailable: json["is_available"],
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
    "id": id,
    "price": price,
    "is_available": isAvailable,
    "image": image,
    "name": name,
  };
}
