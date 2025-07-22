import 'package:flutter/material.dart';

Future<int?> showPlayerDialog(BuildContext context) async {
  return await showDialog<int>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("اختر المشغل", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
        content: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: const Text("المشغل الأول"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: const Text("المشغل الثاني"),
              ),
            ),
          ],
        ),
      );
    },
  );
}
