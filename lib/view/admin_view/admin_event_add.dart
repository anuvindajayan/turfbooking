import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:turfbooking/view/events_details.dart';
// Import the CarouselPage widget

class admin_Turf_Events extends StatefulWidget {
  @override
  _admin_Turf_EventsState createState() => _admin_Turf_EventsState();
}

class _admin_Turf_EventsState extends State<admin_Turf_Events> {
  List<File> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _images.add(File(pickedImage.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Turf Events'),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display images and buttons
              // Add onTap callback to show carousel slider on tap
              ..._images.asMap().entries.map((entry) {
                int index = entry.key;
                File image = entry.value;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Turf_Events(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
              // Button to pick new images
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                child: Text('Pick Image'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
