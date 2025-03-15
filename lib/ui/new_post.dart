import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewPostPage extends StatefulWidget {
  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> pickCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Close the new post page
            Navigator.pop(context);
          },
        ),
        title: Text("New Post"),
        actions: [
          TextButton(
            onPressed: () {
              // Handle "Next" action
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 436,
                  height: 436,
                  color: Colors.grey,
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : Image.asset('assets/neww.jpg', fit: BoxFit.cover),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a caption...",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.white),
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 80,
            child: Row(
              children: [
                SizedBox(width: 20),
                Text('Recents', style: TextStyle(color: Colors.white)),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(Icons.photo_library, color: Colors.white),
                    onPressed: pickImage,
                  ),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: pickCamera,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(2.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: 30, // Replace with the number of images in the gallery
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Handle image selection
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset('assets/picture1177.png',
                        fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
