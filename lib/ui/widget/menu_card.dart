import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    this.onTap,
    required this.iconData,
    required this.iconColor,
    required this.label,
  }) : super(key: key);

  final Function()? onTap;
  final IconData iconData;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: iconColor.withOpacity(0.2),
                child: Icon(
                  iconData,
                  color: iconColor,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
