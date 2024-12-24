import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Update Location'),
              content: const TextField(
                decoration: InputDecoration(hintText: 'Enter your location'),
              ),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Update')),
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Color(0xFF396241),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {openLocationSearchBox(context)},
              child: Row(
                children: [
                  Text(
                    'Deliver now',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Text(
              'Village 5, UTP',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
