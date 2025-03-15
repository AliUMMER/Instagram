// lib/ui/Reels_page.dart

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  bool isLiked = false;
  File? _image;
  final ImagePicker _picker = ImagePicker();

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Reels',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.white),
            onPressed: pickCamera,
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10, // Replace with the number of reels
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // Video Background
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                child: Container(
                  child: Center(
                      child: Image(image: AssetImage('assets/rb_3905.png'))),
                ),
              ),

              // Bottom Section
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/neww.jpg'),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'faizan',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nice reel..........',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.music_note, color: Colors.white, size: 16),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Original Audio ',
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Right Section (Icons)
              Positioned(
                bottom: 20,
                right: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked
                              ? Colors.red
                              : Theme.of(context).iconTheme.color),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),
                    Text('332', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    IconButton(
                      icon: ImageIcon(AssetImage('assets/comments.png'),
                          color: Theme.of(context).iconTheme.color),
                      onPressed: () {},
                    ),
                    Text('639', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    ImageIcon(
                      AssetImage('assets/send.png'),
                      color: Theme.of(context).iconTheme.color,
                    ),
                    SizedBox(height: 10),
                    IconButton(
                      icon: Icon(Icons.bookmark, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
