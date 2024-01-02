import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/model_theme.dart';
import '../utils/Colors.dart';
import '../utils/Extensions/app_common.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Theme"/*language.rideHistory*/, style: boldTextStyle(color: appTextPrimaryColorWhite)),
      ),
      body: Column(
        children: [
          IconButton(
            icon: Icon(
              context.watch<ModelTheme>().isDark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny,
            ),
            onPressed: () {
              context.read<ModelTheme>().toggleTheme();
            },
          )
        ],
      ),

    )
    );
  }
}
