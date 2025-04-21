import 'package:dash_logistics/models/user_model.dart';


class UserRepository {
  // Simulate a data source with a local list of users
  List<User> _users = [
    User(email: 'test@example.com', password: 'password123'),
  ];

  // Method to fetch users
  Future<List<User>> getUsers() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));
    return _users;
  }

  // Method to add a user
  Future<void> addUser(User user) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));
    _users.add(user);
  }

  // Method to authenticate a user
  Future<bool> authenticateUser(String email, String password) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));
    return _users.any((user) => user.email == email && user.password == password);
  }
}