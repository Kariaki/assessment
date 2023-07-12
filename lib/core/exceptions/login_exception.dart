class LoginException implements Exception{

  final String message;
  const LoginException({required this.message});
  @override
  String toString() {
    // TODO: implement toString
    return message;
  }
}