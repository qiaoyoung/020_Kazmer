class Post {
  final String id;
  final String userId;
  final String userName;
  final String userAvatar;
  final String festivalId;
  final String festivalName;
  final String content;
  final List<String> images;
  final DateTime createdAt;
  final int likeCount;
  final int commentCount;
  final bool isLiked;
  final List<String> tags;

  Post({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userAvatar,
    required this.festivalId,
    required this.festivalName,
    required this.content,
    required this.images,
    required this.createdAt,
    required this.likeCount,
    required this.commentCount,
    required this.isLiked,
    required this.tags,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      userName: json['userName'],
      userAvatar: json['userAvatar'],
      festivalId: json['festivalId'],
      festivalName: json['festivalName'],
      content: json['content'],
      images: List<String>.from(json['images']),
      createdAt: DateTime.parse(json['createdAt']),
      likeCount: json['likeCount'],
      commentCount: json['commentCount'],
      isLiked: json['isLiked'],
      tags: List<String>.from(json['tags']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'userName': userName,
      'userAvatar': userAvatar,
      'festivalId': festivalId,
      'festivalName': festivalName,
      'content': content,
      'images': images,
      'createdAt': createdAt.toIso8601String(),
      'likeCount': likeCount,
      'commentCount': commentCount,
      'isLiked': isLiked,
      'tags': tags,
    };
  }
}
