import 'package:flutter/cupertino.dart';

class UtilsMyClickEvent extends StatefulWidget {
  final VoidCallback? onTap;
  final Widget child;
  final int? period;
  final HitTestBehavior? behavior;
  final GestureLongPressCallback? onLongPress;
  final GestureLongPressStartCallback? onLongPressStart;
  final GestureLongPressEndCallback? onLongPressEnd;
  final GestureTapDownCallback? onTapDown;
  final GestureDragUpdateCallback? onPanUpdate;
  final GestureDragEndCallback? onPanEnd;
  final GestureTapUpCallback? onTapUp;
  final GestureDragDownCallback? onPanDown;
  const UtilsMyClickEvent(
      {Key? key,
      required this.onTap,
      required this.child,
      this.period,
      this.behavior,
      this.onLongPress,
      this.onLongPressStart,
      this.onLongPressEnd,
      this.onTapDown,
      this.onPanUpdate,
      this.onPanEnd,
      this.onTapUp,
      this.onPanDown})
      : super(key: key);

  @override
  State<UtilsMyClickEvent> createState() => _UtilsMyClickEventState();
}

class _UtilsMyClickEventState extends State<UtilsMyClickEvent> {
  int? lastActionTime;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (lastActionTime == null) {
            widget.onTap?.call();
            lastActionTime = DateTime.now().millisecondsSinceEpoch;
          } else {
            if (DateTime.now().millisecondsSinceEpoch - lastActionTime! >
                1000) {
              widget.onTap?.call();
              lastActionTime = DateTime.now().millisecondsSinceEpoch;
            }
          }
        },
        behavior: widget.behavior,
        onLongPress: widget.onLongPress,
        onLongPressStart: widget.onLongPressStart,
        onLongPressEnd: widget.onLongPressEnd,
        onTapDown: widget.onTapDown,
        onPanUpdate: widget.onPanUpdate,
        onPanEnd: widget.onPanEnd,
        onTapUp: widget.onTapUp,
        onPanDown: widget.onPanDown,
        child: Container(child: widget.child));
  }
}
