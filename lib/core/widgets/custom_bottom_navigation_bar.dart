import 'package:ecommerce_app/features/home/domain/entities/bottom_nav_bar_entity.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.bottomNavBarEntity,
  });

  final BottomNavBarEntity bottomNavBarEntity;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: widget.bottomNavBarEntity.getBottomNavBarEntityList
            .asMap()
            .entries
            .map((entry) {
              var index = entry.key;
              var e = entry.value;
              return Expanded(
                flex: currentIndex == index ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: currentIndex == 0 ? 27 : 0,
                      left: currentIndex == 3 ? 27 : 0,
                    ),
                    child: BottomNavBarItem(
                      bottomNavBarEntity: e,
                      isSelected: currentIndex == index,
                    ),
                  ),
                ),
              );
            })
            .toList(),
      ),
    );
  }
}
