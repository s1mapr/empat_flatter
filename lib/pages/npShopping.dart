import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NPShopping extends StatefulWidget {
  @override
  _NPShoppingState createState() => _NPShoppingState();
}

class _NPShoppingState extends State with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _positionAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(_controller);

    _positionAnimation = Tween<double>(begin: 0, end: 200).animate(_controller);

    _sizeAnimation = Tween<double>(begin: 100, end: 50).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NP Shopping')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: _sizeAnimation.value,
                  height: _sizeAnimation.value,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _colorAnimation.value,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      _sizeAnimation.value.toStringAsFixed(2),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _positionAnimation.value),
              ],
            );
          },
        ),
      ),
    );
  }
}
