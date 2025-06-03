/// Represents a video quality option
class QualityOption {
  /// The height of the video resolution (e.g., 720 for 720p)
  /// A value of 0 indicates automatic/best quality
  final int height;

  /// The display label for this quality (e.g., "720p", "Auto")
  final String label;

  final String url;
  final String audioUrl;

  /// Creates a new quality option
  QualityOption({
    required this.height,
    required this.label,
    required this.url,
    required this.audioUrl,
  });

  @override
  String toString() => label;
}
