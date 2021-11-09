class UserLoginModel {
  LoginUser? loginUser;

  UserLoginModel({this.loginUser});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    loginUser = json['loginUser'] != null
        ? LoginUser.fromJson(json['loginUser'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (loginUser != null) {
      data['loginUser'] = loginUser!.toJson();
    }
    return data;
  }
}

class LoginUser {
  bool? success;
  var refresh;
  var access;
  User? user;

  LoginUser({this.success, this.refresh, this.access, this.user});

  LoginUser.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    refresh = json['refresh'];
    access = json['access'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['refresh'] = refresh;
    data['access'] = access;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  var username;
  var email;
  var phone;

  User({this.username, this.email, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['phone'] = phone;
    return data;
  }
}