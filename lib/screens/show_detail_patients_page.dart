import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/show_detail_patients_view_model.dart';
import '../components/detail_card.dart';
import 'package:flutter_animate/flutter_animate.dart';
// Removed import '../flutter_flow/flutter_flow_theme.dart';
// Removed import '../flutter_flow/flutter_flow_util.dart';

class ShowDetailPatientsPage extends StatefulWidget {
  const ShowDetailPatientsPage({super.key});

  @override
  State<ShowDetailPatientsPage> createState() => _ShowDetailPatientsPageState();
}

class _ShowDetailPatientsPageState extends State<ShowDetailPatientsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShowDetailPatientsViewModel(),
      child: Scaffold(
        backgroundColor: const Color(0xFF1E2429),
        appBar: AppBar(
          backgroundColor: const Color(0xFF00A896),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            "Data Patients",
            style: TextStyle(
              fontFamily: 'Lexend',
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 0.0,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(children: [
                  Consumer<ShowDetailPatientsViewModel>(
                      builder: (context, model, child) {
                    return DetailCard(
                      text: "<Nama Pasien>",
                      buttonText: "Detail",
                      onPressed: () {
                        Navigator.pushNamed(context, "patientPage");
                      },
                    );
                  }),
                  Consumer<ShowDetailPatientsViewModel>(
                      builder: (context, model, child) {
                    return DetailCard(
                      text: "<Nama Pasien>",
                      buttonText: "Detail",
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    );
                  }),
                  Consumer<ShowDetailPatientsViewModel>(
                      builder: (context, model, child) {
                    return DetailCard(
                      text: "<Nama Pasien>",
                      buttonText: "Detail",
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    );
                  }),
                  Consumer<ShowDetailPatientsViewModel>(
                      builder: (context, model, child) {
                    return DetailCard(
                      text: "<Nama Pasien>",
                      buttonText: "Detail",
                      onPressed: () {
                        print('Button pressed ...');
                      },
                    );
                  }),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}