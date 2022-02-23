import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.3, 0.7, 1],
            colors: [
              context.cardColor.withAlpha(600),
              context.cardColor.withAlpha(200),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: 'GET STARTED'.text.bold.xl2.make(),
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            80.heightBox,
            'Call Your Friend Simply And Simple \nwith Chatdong'
                .text
                .subtitle1(context)
                .xl2
                .gray400
                .make(),
            40.heightBox,
            'It\'s easy talking to \nyour friend with \nchatdong'
                .text
                .white
                .xl6
                .make(),
          ],
        ).p(30),
      ),
    );
  }
}
