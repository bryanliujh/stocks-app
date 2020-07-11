import 'package:flutter/material.dart';
import '../widgets/news_item.dart';
import '../MockItems.dart';

class NewsScreen extends StatelessWidget {
  static const routeName = '/news';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return NewsItem(
            title: NEWS_LIST[index].title,
            imageUrl: NEWS_LIST[index].imageUrl,
            articlesCount: NEWS_LIST[index].articlesCount,
          );
        },
        itemCount: NEWS_LIST.length,
      ),
    );
  }
}
