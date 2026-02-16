import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ToggleContainerSwitch extends StatefulWidget {
  const ToggleContainerSwitch({
    super.key,
    this.activeCircleColor,
    this.inactiveCircleColor,
  });

  final Color? activeCircleColor;
  final Color? inactiveCircleColor;

  @override
  State<ToggleContainerSwitch> createState() => _ToggleContainerSwitchState();
}

class _ToggleContainerSwitchState extends State<ToggleContainerSwitch> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
        width: 40,
        height: 24,
        decoration: ShapeDecoration(
          color: isActive ? ColorData.kPrimaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: isActive
                  ? ColorData.kPrimaryColor
                  : ColorData.kBorderColor,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Stack(
          children: [
            isActive
                ? Positioned(
                    left: 17,
                    top: 1,
                    child: ActiveCircle(
                      activeCircleColor: widget.activeCircleColor,
                    ),
                  )
                : Positioned(
                    left: 2,
                    top: 1,
                    child: InActiveCircle(
                      inactiveCircleColor: widget.inactiveCircleColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class ActiveCircle extends StatelessWidget {
  const ActiveCircle({super.key, this.activeCircleColor});

  final Color? activeCircleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        color: activeCircleColor ?? Colors.white,
        shape: const OvalBorder(),
      ),
    );
  }
}

class InActiveCircle extends StatelessWidget {
  const InActiveCircle({super.key, this.inactiveCircleColor});

  final Color? inactiveCircleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        color: inactiveCircleColor ?? const Color(0xFF8C8B8B),
        shape: const OvalBorder(),
      ),
    );
  }
}
