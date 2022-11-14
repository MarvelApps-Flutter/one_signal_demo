class NewsTypeModel
{
  final String? newsTypeName;
  NewsTypeModel({this.newsTypeName});
}

List<NewsTypeModel> newsTypeList = [
  NewsTypeModel(newsTypeName: "Healthy"),
  NewsTypeModel(newsTypeName: "Technology"),
  NewsTypeModel(newsTypeName: "Finance"),
  NewsTypeModel(newsTypeName: "Arts"),
  NewsTypeModel(newsTypeName: "Sports")
];