class Speciality {
  final String id;
  final String price;
  final bool isAvailable;
  final String image;
  final String name;

  Speciality({
    required this.id,
    required this.price,
    required this.isAvailable,
    required this.image,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'price': price,
      'is_available': isAvailable,
      'image': image,
      'name': name,
    };
  }
  
  factory Speciality.fromJson(Map<String, dynamic> json) {
    return Speciality(
      id: json['id'],
      price: json['price'],
      isAvailable: json['is_available'],
      image: json['image'],
      name: json['name'],
    );
  }
}
