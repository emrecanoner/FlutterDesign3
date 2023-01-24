import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:x_mobil_app/classes/classes.dart';
import 'package:x_mobil_app/main.dart';
import 'package:x_mobil_app/utils/constant.dart';

import '../widgets/widgets.dart';

class AbonelikPlani extends ConsumerStatefulWidget {
  const AbonelikPlani({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AbonelikPlaniState();
}

class _AbonelikPlaniState extends ConsumerState<AbonelikPlani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: (() {
            Get.back();
          }),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: ListView(
              children: [
                buildHeader(),
                buildHeaderExp(),
                BuildAbonelikPlanOne(),
                SizedBox(height: gHeight / 150),
                BuildAbonelikPlanTwo(),
                SizedBox(height: gHeight / 150),
                BuildAbonelikPlanThree(),
                SizedBox(height: gHeight / 50),
                buildOKButton(),
                buildBottomExp()
              ],
            ),
          ),
        ],
      )),
    );
  }
}
