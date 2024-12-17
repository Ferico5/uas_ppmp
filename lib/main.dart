import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/home_page.dart';
import 'screens/new_patient_page.dart';
import 'screens/show_detail_patients_page.dart';
import 'screens/patient_page.dart';
import 'screens/update_patient_page.dart'; // Import the new page

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        'homePage': (context) => const HomePage(),
        'newPatientPage': (context) => const NewPatientPage(),
        'showDetailPatientsPage': (context) => const ShowDetailPatientsPage(),
        'patientPage': (context) => const PatientPage(),
        'updatePatientPage': (context) =>
            const UpdatePatientPage(), // Add this line
      },
    );
  }
}