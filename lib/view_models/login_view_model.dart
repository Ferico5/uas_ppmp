import 'package:flutter/material.dart';
import '../models/login_model.dart';
// Removed import 'package:email_validator/email_validator.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginModel _model = LoginModel();

  LoginModel get model => _model;

  void setEmail(String value) {
    _model.email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _model.password = value;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _model.passwordVisible = !_model.passwordVisible;
    notifyListeners();
  }

  void setLoading(bool value) {
    _model.isLoading = value;
    notifyListeners();
  }

  void setError(String? value) {
    _model.error = value;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    // We receive the context
    setLoading(true);
    setError(null);
    if (_model.email.isEmpty || _model.password.isEmpty) {
      setError("Please fill all the fields");
      setLoading(false);
      return;
    }

    // Removed email validation

    //TODO: Login Implementation
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
    //Navigate to the next screen
    Navigator.pushReplacementNamed(context, 'homePage');
  }
}