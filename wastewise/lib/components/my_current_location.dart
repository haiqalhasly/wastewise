import 'package:flutter/material.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
//To make the location updated
  String currentLocation = 'Village 5, UTP';
  final TextEditingController locationController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    locationController.text = currentLocation;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Update Location'),
              content: TextField(
                controller: locationController,
                decoration: InputDecoration(hintText: 'Enter your location'),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentLocation = locationController.text;
                      });
                      Navigator.pop(context);
                    },
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: const Color(0xFF396241),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {openLocationSearchBox(context)},
              child: const Row(
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
              currentLocation,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
