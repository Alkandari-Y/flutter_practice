class Posts {
  Posts({
    this.datePosted = '',
    required this.id,
    required this.authorId,
    required this.title,
    required this.content,
    required this.imageUrl,
  });
  int id;
  int authorId;
  String title;
  String content;
  String imageUrl;
  String datePosted;

  List<Posts> postList = [];

  void createPost(Posts newPost) {
    postList.add(newPost);
  }

  List<Posts> searchPosts(String query) {
    return postList
        .where((post) =>
            post.content.toLowerCase().contains(query.toLowerCase()) ||
            post.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  List<Posts> getPostsByUser(int userId) {
    return postList.where((element) => element.authorId == userId).toList();
  }

  Posts? getPostDetail(int postId) {
    return postList.firstWhere((element) => element.id == postId);
  }
}
