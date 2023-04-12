import 'package:flutter/material.dart';
import 'package:newsapp/controller/fetchnews.dart';
import 'package:newsapp/model/newsArt.dart';
import 'package:newsapp/widgets/newsConntainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('news app'),
      ),
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          // controller: PageController({initialPage:3}),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            GetNews();
          },
          itemBuilder: (context, index) {
            FetchNews.fetchNews();

            return NewsConatiner(
              imgUrl: newsArt.imgUrl,
              newsDescription: newsArt.newsDec,
              newsHead: newsArt.newsHead,
              newsUrl: newsArt.newsUrl,
            );
          }),
    );
  }
}
