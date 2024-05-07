import 'package:flutter/material.dart';

class ArticleViewItem extends StatelessWidget {
  final Map<String, String> articleItem;

  const ArticleViewItem({super.key, required this.articleItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: (articleItem["text"] == null || articleItem["text"] == "") &&
              (articleItem["image"] != null || articleItem["image"] != "")
          ? Image.network(articleItem["image"]!)
          : (articleItem["image"] == null || articleItem["image"] == "") &&
                  (articleItem["text"] != null || articleItem["text"] != "")
              ? Text(articleItem["text"]!)
              : const SizedBox(),
    );
  }
}
