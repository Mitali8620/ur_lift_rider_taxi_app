import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urmusic_world/main.dart';
import '../utils/Colors.dart';
import '../utils/Extensions/app_common.dart';

class FevoriteScreen extends StatefulWidget {
  const FevoriteScreen({super.key});

  @override
  State<FevoriteScreen> createState() => _FevoriteScreenState();
}

class _FevoriteScreenState extends State<FevoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(language.favorites, style: boldTextStyle(color: appTextPrimaryColorWhite)),
      ),
    ));
  }
}
