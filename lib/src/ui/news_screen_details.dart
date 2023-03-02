

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_bloc/src/model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsScreen extends StatelessWidget {
  static Widget create(Object article) =>
      NewsDetailsScreen(article: article as Article);

  final Article article;

  const NewsDetailsScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('News details'),
      ),
      body: Column(
        children: [
          article.urlToImage == null ? Container(
            color: Colors.red,
            height: 250,) : Image.network(article.urlToImage!),
          Text(
            article.title,
            style:const TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            article.description ?? '',
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: (){
                launch(article.url!);
              },
              child:const Text('More details'),)
        ],
      ),
    );
  }
}
