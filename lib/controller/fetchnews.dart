//https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=06ee555ebb6949beb356025d1867f3
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:newsapp/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",

  ];

  static Future<NewsArt> fetchNews() async {
    final _random=new Random();
    var sourceID= sourcesId[_random.nextInt(sourcesId.length)];
    print(sourceID);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=06ee555ebb6949beb356025d1867f3a5"));

    Map body_data = jsonDecode(response.body);
    var articles= body_data["articles"];
    print(articles);
    // print("**********************************************************");

    final _newrandom=new Random();
    var MYarticle= articles[_random.nextInt(articles.length)];
    // print(MYarticle);
    print("**********************************************************");

    return NewsArt.fromAPItoApp(MYarticle);
  }
}
