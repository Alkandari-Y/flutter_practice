class Users {
  Users(
      {required this.id,
      required this.username,
      required this.email,
      required this.profileImg,
      required this.bannerImg});
  int id;
  String username;
  String email;
  String profileImg;
  String bannerImg;
  bool loggedIn = false;

  List<Users> userList = [];

  void login(Users user) {
    userList.add(user);
    loggedIn = true;
  }

  void logout() {
    loggedIn = false;
  }

  void register(Users userData) {
    Users newUser = Users(
        id: userData.id,
        username: userData.username,
        email: userData.email,
        profileImg: userData.profileImg,
        bannerImg: userData.bannerImg);
  }

  Users? getUser({var query}) {
    Users? foundUser;
    if (query is String) {
      foundUser = userList.firstWhere(
          (element) =>
              element.username.toLowerCase().contains(query.toLowerCase()) ||
              element.email.toLowerCase().contains(query.toLowerCase()),
          orElse: foundUser = null);
    } else if (query is int) {
      foundUser = userList.firstWhere((element) => element.id == query,
          orElse: foundUser = null);
    }
    return foundUser;
  }
}
