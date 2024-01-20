class TopNews {
  TopNews(
      {required this.status,
      required this.totalResult,
      required this.articles});
  final String status;
  final int totalResult;
  final List<Articles> articles;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
        status: json['status'],
        totalResult: json['totalResult'],
        articles: json['articles']);
  }
}

class Articles {
  Articles(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
        source: json['source'],
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content']);
  }
}

class Source {
  final String id;
  final String name;

  Source({required this.id, required this.name});
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }
}
