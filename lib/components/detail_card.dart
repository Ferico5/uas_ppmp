import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../components/my_button.dart';
// Removed import '../flutter_flow/flutter_flow_theme.dart';

class DetailCard extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback onPressed;
  final int animationIndex;

  const DetailCard({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
    this.animationIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.92,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0x6639D2C0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "1", //FFLocalizations.of(context).getText('87dwkobb')
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 14,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 22,
                            letterSpacing: 0.0,
                            color: Colors.white),
                      ),
                    ),
                    MyButton(
                      text: buttonText,
                      onPressed: onPressed,
                      backgroundColor: const Color(
                          0xFF00A896), // FlutterFlowTheme.of(context).primary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )
        .animate(
          onPlay: (controller) => controller.forward(),
        )
        .fadeIn(duration: 600.ms)
        .move(duration: 600.ms, begin: const Offset(0, 60));
  }
}