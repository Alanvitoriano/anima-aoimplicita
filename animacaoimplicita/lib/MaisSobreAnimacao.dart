import 'package:flutter/material.dart';

class MaisSobreAnimacao extends StatefulWidget {
  @override
  _MaisSobreAnimacaoState createState() => _MaisSobreAnimacaoState();
}

class _MaisSobreAnimacaoState extends State<MaisSobreAnimacao>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    // _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(60, 60))
        .animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,
        child: Stack(
          children: <Widget>[
            Positioned(
              width: 180,
              height: 180,
              left: 0,
              top: 0,
              child: Image.asset("imagem/logo.png"),
            )
          ],
        ),
        builder: (context, Widget) {
          return Transform.translate(
            offset: _animation.value,
            child: Widget,
          );
          /* return Transform.scale(
            scale: _animation.value,
            child: Widget,
          );*/
          /* return Transform.rotate(
            angle: _animation.value,
            child: Widget,
          );*/
        },
      ),
    );
  }
}
