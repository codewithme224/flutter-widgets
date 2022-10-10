import 'package:flutter/material.dart';
import 'package:widgets/widgets/aboutdialog.dart';
import 'package:widgets/widgets/aboutlisttile.dart';
import 'package:widgets/widgets/absordpointer.dart';
import 'package:widgets/widgets/alertdialog.dart';
import 'package:widgets/widgets/alignment.dart';
import 'package:widgets/widgets/animatedalign.dart';
import 'package:widgets/widgets/animatedbuilder.dart';
import 'package:widgets/widgets/animatedcontainer.dart';
import 'package:widgets/widgets/animatedcrossfade.dart';
import 'package:widgets/widgets/animatedicon.dart';
import 'package:widgets/widgets/animatedlist.dart';
import 'package:widgets/widgets/animatedpadding.dart';
import 'package:widgets/widgets/animatedphysicalmodel.dart';
import 'package:widgets/widgets/animatedposition.dart';
import 'package:widgets/widgets/animatedrotation.dart';
import 'package:widgets/widgets/animatedsize.dart';
import 'package:widgets/widgets/animatedswitcher.dart';
import 'package:widgets/widgets/animatedtextstyle.dart';
import 'package:widgets/widgets/animationopacity.dart';
import 'package:widgets/widgets/appbar.dart';
import 'package:widgets/widgets/aspectratio.dart';
import 'package:widgets/widgets/autocomplete.dart';
import 'package:widgets/widgets/backdropfilter.dart';
import 'package:widgets/widgets/banner.dart';
import 'package:widgets/widgets/baselinewidget.dart';
import 'package:widgets/widgets/blocksemantics.dart';
import 'package:widgets/widgets/bottomnavbar.dart';
import 'package:widgets/widgets/bottomsheet.dart';
import 'package:widgets/widgets/builder.dart';
import 'package:widgets/widgets/card.dart';
import 'package:widgets/widgets/center.dart';
import 'package:widgets/widgets/checkbox.dart';
import 'package:widgets/widgets/checkboxlisttile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
          primarySwatch: Colors.blueGrey),
      home: const CheckBoxListTile(),
    );
  }
}
