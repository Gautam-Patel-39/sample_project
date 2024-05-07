import 'package:flutter/material.dart';
import 'package:sample_project/models/article.dart';
import 'package:sample_project/widgets/article_view_item.dart';

class ArticleView extends StatelessWidget {
  final Article article;

  const ArticleView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: article.articleItems.map((element) {
            return ArticleViewItem(articleItem: element);
          }).toList(),
        ),
      ),
    );
  }
}
