import 'package:flutter/material.dart';
import 'package:x_mobil_app/utils/constant.dart';
import 'package:x_mobil_app/widgets/widgets.dart';

class BuildAbonelikPlanOne extends StatelessWidget {
  const BuildAbonelikPlanOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildAboneContextHeader('Ücretsiz'),
              SizedBox(height: gHeight / 150),
              buildAboneContext('Süresiz'),
              buildAboneContext('Uygulama içi reklam gösterimi'),
              buildAboneContext('Ayda en fazla 3 anlık bildirim'),
              buildAboneContext('Alt kullanıcı eklenemez'),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        height: gHeight / 5,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 201, 203, 210),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

class BuildAbonelikPlanTwo extends StatelessWidget {
  const BuildAbonelikPlanTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildAboneContextHeader('İlk 30 Gün Ücretsiz'),
              SizedBox(height: gHeight / 150),
              buildAboneContext('İlk 30 gün ücretsiz'),
              buildAboneContext('İlk 30 günden sonra aylık 1 ₺'),
              buildAboneContext('Reklamsız'),
              buildAboneContext('Dilediğin aboneliği edin'),
              buildAboneContext('Dilediğin zaman iptal et'),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        height: gHeight / 5,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 201, 203, 210),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

class BuildAbonelikPlanThree extends StatelessWidget {
  const BuildAbonelikPlanThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildAboneContextHeader('Ücretli'),
              SizedBox(height: gHeight / 150),
              buildAboneContext('Aylık 1 ₺*'),
              buildAboneContext('Reklamsız'),
              buildAboneContext('Dilediğin aboneliği edin'),
              buildAboneContext('Dilediğin zaman iptal et'),
              buildAboneContext('Dilediğin bildirimi al'),
              buildAboneContext('Sınırsız alt kulllanıcı ekleme'),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        height: gHeight / 4,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 144, 153, 188),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
