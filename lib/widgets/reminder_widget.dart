import 'package:flutter/material.dart';

class ReminderWidget extends StatelessWidget {
  final String title;
  final String description;
  final Color customColor;
  const ReminderWidget({Key? key, required this.title, required this.description, required this.customColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff292929),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 10, bottom: 10, right: 14),
        child: Row(
          children: [
            VerticalDivider(
              color: customColor,
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xff959595),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
