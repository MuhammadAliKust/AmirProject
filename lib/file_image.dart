import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileImageDemo extends StatefulWidget {
  const FileImageDemo({super.key});

  @override
  State<FileImageDemo> createState() => _FileImageDemoState();
}

class _FileImageDemoState extends State<FileImageDemo> {
  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image"), centerTitle: true),
      body: Column(
        children: [
          if (file != null) Image.file(file!),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ImagePicker().pickImage(source: ImageSource.gallery).then((val) {
                file = File(val!.path);
                setState(() {});
              });
            },
            child: Text("Pick Image"),
          ),
        ],
      ),
    );
  }
}
