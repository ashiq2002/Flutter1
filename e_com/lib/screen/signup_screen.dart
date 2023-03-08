import 'package:e_com/responsive/body/desktop_body.dart';
import 'package:e_com/responsive/body/mobile_body.dart';
import 'package:e_com/responsive/body/tablet_body.dart';
import 'package:e_com/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        tabletBody: TabletBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
