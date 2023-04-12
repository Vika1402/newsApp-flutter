import 'package:flutter/material.dart';

import 'detail_view.dart';

class NewsConatiner extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDescription;
  String newsUrl;
  NewsConatiner({
    super.key,
    required this.imgUrl,
    required this.newsUrl,
    required this.newsDescription,
    required this.newsHead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imgUrl,
            height: 400,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                SizedBox(height: 20,),
                Text(
                  newsHead.length>70? "${newsHead.substring(0,70)}":newsHead,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Text(
                  newsDescription,
                  style: TextStyle(fontSize: 17),
                ),
              ],),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilView(newsUrl: newsUrl,)));

        }, child:Text("read more"),
      ),

    ),
    ],
    ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
