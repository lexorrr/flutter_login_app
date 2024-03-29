import 'package:flutter_login_app/repository/user_repository.dart';

/// Registration and authentication mock (for testing)
class TestUserRepository extends UserRepository {
  final String fakeEmail;
  final bool success;
  const TestUserRepository({
    required this.fakeEmail,
    required this.success
  });

  @override
  Future<bool> authenticate(String username, String password) =>
      Future<bool>.delayed(const Duration(seconds: 1), () => success);

  @override
  Future<bool> register(String username, String password) =>
      Future<bool>.delayed(const Duration(seconds: 1), () => success);

  @override
  Future<void> logOut() =>
      Future<bool>.delayed(const Duration(milliseconds: 200));

  @override
  String? get signedEmail => fakeEmail;
}