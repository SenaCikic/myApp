class ResumeItemModel {
  final String title;
  final String imageUrl;

  ResumeItemModel({
    this.title,
    this.imageUrl,
  });

  ResumeItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        imageUrl = map['imageUrl'];
}
