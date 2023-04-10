import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newsConntainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bye-bye'),
      ),
      body: PageView.builder(
          // controller: PageController({initialPage:3}),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsConatiner(
              imgUrl:
                  'https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
              newsDescription:
                  "Speedtest Intelligence® ember 2022 to 29.85 Mbps i’s position on the Speedtest Global Index improved by 49 places from 118th in September 2022 to 69th in January 2023. This puts India ahead of some of the G20 countries, such as Mexico, Russia, and Argentina,(35.85 Mbps/57th place)",
              newsHead: "5g in india",
              newsUrl: " newsUrl",
            );
          }),
    );
  }
}
