import 'package:flutter/material.dart';
import '../models/new_patient_model.dart';

class NewPatientViewModel extends ChangeNotifier {
  final NewPatientModel _model = NewPatientModel();

  NewPatientModel get model => _model;

  void setName(String value) {
    _model.name = value;
    notifyListeners();
  }

  void setAge(String value) {
    _model.age = value;
    notifyListeners();
  }

  void setGender(String? value) {
    _model.gender = value;
    notifyListeners();
  }

  void setAddress(String value) {
    _model.address = value;
    notifyListeners();
  }

  void setPhoneNumber(String value) {
    _model.phoneNumber = value;
    notifyListeners();
  }

  void setEmail(String value) {
    _model.email = value;
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

  Future<void> submit(BuildContext context) async {
    setLoading(true);
    setError(null);
    if (_model.name.isEmpty ||
        _model.age.isEmpty ||
        _model.address.isEmpty ||
        _model.phoneNumber.isEmpty ||
        _model.email.isEmpty) {
      setError("Please fill all the fields");
      setLoading(false);
      return;
    }
    //TODO: Submit data
    await Future.delayed(const Duration(seconds: 2));
    setLoading(false);
    //Navigate to the next screen
    Navigator.pushReplacementNamed(context,
        'showDetailPatientsPage'); // Navigate to ShowDetailPatientsPage
  }
}