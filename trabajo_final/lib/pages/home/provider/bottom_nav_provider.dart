import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavProvider extends ChangeNotifier {
  final ValueNotifier<int> _index = ValueNotifier(0);
  ValueNotifier<int> get index => _index;

  final ValueNotifier<bool> _show = ValueNotifier(true);
  ValueNotifier<bool> get show => _show;

  final ScrollController _controller = ScrollController();
  ScrollController get controller => _controller;

  BottomNavProvider() {
    _init();
  }

  void _init() {
    _controller.addListener(_listener);
  }

  void _listener() {
    if (_controller.position.userScrollDirection == ScrollDirection.reverse &&
        _show.value) {
      _show.value = false;
    } else if (_controller.position.userScrollDirection ==
            ScrollDirection.forward &&
        !_show.value) {
      _show.value = true;
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  void setIndex(int value) => _index.value = value;
}
