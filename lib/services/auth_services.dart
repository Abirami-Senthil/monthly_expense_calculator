
import 'dart:async';
import 'dart:math';

class AuthService {
  // Login
  Future<bool> login() async {
    // Simulate a future for response after 2 second.
<<<<<<< HEAD
    return await Future<bool>.delayed(
        Duration(
            seconds: 2
        ), () => Random().nextBool()
=======
    return await new Future<bool>.delayed(
        new Duration(
            seconds: 2
        ), () => new Random().nextBool()
>>>>>>> origin/wip
    );
  }

  // Logout
  Future<void> logout() async {
    // Simulate a future for response after 1 second.
<<<<<<< HEAD
    return await Future<void>.delayed(
        Duration(
=======
    return await new Future<void>.delayed(
        new Duration(
>>>>>>> origin/wip
            seconds: 1
        )
    );
  }
}