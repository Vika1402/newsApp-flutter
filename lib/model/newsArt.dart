
class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDec;
  String newsCnt;
  String newsUrl;


  NewsArt({
    required this.newsUrl,
    required this.newsCnt,
    required this.newsDec,
    required this.newsHead,
    required this.imgUrl,
});

 static NewsArt fromAPItoApp(Map<String,dynamic> article){
    return NewsArt(
      imgUrl: article["urlToImage"] ?? "https://www.shutterstock.com/image-vector/breaking-news-background-world-global-tv-71976611",
      newsCnt: article["content"] ?? "--",
      newsDec: article["description"] ?? "--",
      newsHead: article["title"] ?? "--",
      newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",

    );
  }



}

