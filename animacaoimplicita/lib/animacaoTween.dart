import 'package:flutter/material.dart';

class animacaoTween extends StatefulWidget {
  @override
  _animacaoTweenState createState() => _animacaoTweenState();
}

class _animacaoTweenState extends State<animacaoTween> {
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return Center(
      /* child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: 6.28),
        builder: (BuildContext context, double angulo, Widget widget) {
          return Transform.rotate(
            angle: angulo,
            child: Image.asset("imagem/logo.png"),
          );
        },
      ),*/
      /*child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 50, end: 180),
        builder: (BuildContext context, double lagura, Widget widget) {
          return Container(
            color: Colors.green,
            width: lagura,
            height: 60,
          );
        },
      ),*/
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: colorTween,
        child: Image.asset("imagem/estrelas.jpg"),
        builder: (BuildContext context, Color cor, Widget widget) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(cor, BlendMode.overlay),
            child: widget,
          );
        },
      ),
    );
  }
}
