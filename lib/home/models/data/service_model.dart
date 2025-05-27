class ServiceModel {
  final String title;
  final String id;
  final String description;
  final String route;

  final String preceedingImageUrl;
  final String backgroundImageUrl;

  ServiceModel({
    required this.title,
    required this.id,
    required this.route,

    required this.description,
    required this.preceedingImageUrl,
    required this.backgroundImageUrl,
  });

  // since this isn't clean arch i m putting the serialization logic here in this file itself

  factory ServiceModel.fromFireStore(Map<String, dynamic> data) => ServiceModel(
    title: data['title'] ?? '',
    id: data['id'] ?? '',
    route: data['route'] ?? '',
    description: data['description'] ?? '',
    preceedingImageUrl: data['preceeding_image_url'] ?? '',
    backgroundImageUrl: data['background_image_url'] ?? '',
  );

  Map<String, dynamic> toMap() => {
    'title': title,
    'id': id,
    'route': route,
    'description': description,
    'preceeding_image_url': preceedingImageUrl,
    'background_image_url': backgroundImageUrl,
  };
  @override
  bool operator ==(covariant ServiceModel other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}
