import 'dart:async';
import 'user.dart';
import 'database_helper.dart';

class RestData {
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<User> login(String username, String password) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var user = User('', username, password, '');
    var db = DatabaseHelper();
    var userRetorno = User('', '', '', '');
    userRetorno = (await db.selectUser(user))!;
    if (userRetorno != null) {
      flagLogged = "logged";
      return Future.value(User('', username, password, flagLogged));
    } else {
      flagLogged = "not";
      return Future.value(User('', username, password, flagLogged));
    }
  }
}
