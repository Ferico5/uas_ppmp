class LoginModel {
  String email;
  String password;
  bool passwordVisible;
  bool isLoading;
  String? error;

  LoginModel({
    this.email = '',
    this.password = '',
    this.passwordVisible = false,
    this.isLoading = false,
    this.error,
  });
}