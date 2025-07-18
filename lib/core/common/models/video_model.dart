class VideoModel {
  final String? id;
  final String? title;
  final String? videoUrl;
  final String? youtubeUrl;
  final String? duration;
  final String? unit;
  final bool? canView;
  final String? price;
  final String? description;
  VideoModel({
    required this.id,
    required this.title,
    required this.videoUrl,
    required this.youtubeUrl,
    required this.duration,
    required this.unit,
    required this.canView,
    required this.price,
    required this.description,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      title: json['title'],
      videoUrl: json['video_url'],
      youtubeUrl: json['youtube_url'],
      duration: json['duration'],
      unit: json['unit'],
      canView: json['can_view'],
      price: json['price'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'video_url': videoUrl,
      'youtube_url': youtubeUrl,
      'duration': duration,
      'unit': unit,
      'can_view': canView,
      'price': price,
      'description': description,
    };
  }
}