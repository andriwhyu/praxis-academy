import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> animation;


  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this
    );

    final curveAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceOut
    );

    animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi
    ).animate(curveAnimation)
    ..addListener(() {
      setState(() {});
    })
    ..addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        animationController.reverse();
      } else if(status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: Image.asset('images/android.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}



// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class AnimationPage extends StatefulWidget {
//   @override
//   _AnimationPageState createState() => _AnimationPageState();
// }

// class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
//   AnimationController animationController;
//   Animation<double> animation;

//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//       duration: Duration(seconds: 100),
//       vsync: this
//     );

//     final curveAnimation = CurvedAnimation(
//       parent: animationController,
//       curve: Curves.bounceIn,
//       reverseCurve: Curves.easeOut
//     );

//     animation = Tween<double>(
//       begin: 0,
//       end: 2 * math.pi,
//     ).animate(curveAnimation)
//     ..addListener(() {
//       setState(() {});
//     })
//     ..addStatusListener((status) {
//       if(status == AnimationStatus.completed) {
//         animationController.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         animationController.forward();
//       }
//     });

//     animationController.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Transform.rotate(
//         angle: animation.value,
//         child: Container(
//           alignment: Alignment.center,
//           padding: EdgeInsets.all(30),
//           child: Image.asset("images/android.png"),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }
// }