import 'package:flutter/material.dart';
import '../models/show_detail_patients_model.dart';

class ShowDetailPatientsViewModel extends ChangeNotifier {
  final ShowDetailPatientsModel _model = ShowDetailPatientsModel();

  ShowDetailPatientsModel get model => _model;
  void setLoading(bool value) {
    _model.isLoading = value;
    notifyListeners();
  }

  void setError(String? value) {
    _model.error = value;
    notifyListeners();
  }
}