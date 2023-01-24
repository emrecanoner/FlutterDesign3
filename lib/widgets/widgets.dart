import 'package:flutter/material.dart';
import 'package:x_mobil_app/utils/constant.dart';

Widget buildHeader() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0, left: 16),
    child: Text("Abonelik Planı",
        style: TextStyle(
            fontSize: 18,
            color: Color(0xFF0A1034),
            fontWeight: FontWeight.bold)),
  );
}

Widget buildHeaderExp() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 16),
    child: Text("Abonelik planınızı istediğiniz zaman değiştirebilirsiniz.",
        style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 154, 158, 179),
            fontWeight: FontWeight.bold)),
  );
}

Widget buildAboneContext(String text) {
  return Row(
    children: [
      SizedBox(width: gWidth / 40),
      Container(
        child: Text('✓'),
      ),
      SizedBox(width: gWidth / 40),
      Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.black),
      )
    ],
  );
}

Widget buildAboneContextHeader(String text) {
  return Container(
      child: Text(
    text,
    style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 108, 110, 122)),
  ));
}

Widget buildOKButton() {
  return GestureDetector(
    onTap: () {},
    child: Align(
      child: Container(
        height: gHeight / 18,
        width: gWidth / 1.3,
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 227, 94, 22),
        ),
        child: Text(
          'Tamamla',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
    ),
  );
}

Widget buildBottomExp() {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
    child: Text(
        "*Abonelik ücreti telefon faturanıza yansıtılacaktır veya bakiyeniz düşürülecektir.",
        style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 154, 158, 179),
            fontWeight: FontWeight.bold)),
  );
}
