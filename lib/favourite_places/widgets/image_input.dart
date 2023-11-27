import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key, required this.onPickImage}) : super(key: key);

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  _takePicture() async {
    final imagepicker = ImagePicker();

    final pickedImage = await imagepicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
    );

    if (pickedImage == null) {
      return;
    }

    setState(() {
      _selectedImage = File(pickedImage.path);
    });

    widget.onPickImage(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _takePicture(),
      icon: const Icon(Icons.camera),
      label: const Text("Take Picture"),
    );
    if (_selectedImage != null) {
      content = GestureDetector(
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
        ),
      );
    }
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.red.withOpacity(0.1))),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
          onPressed: () {
            _takePicture();
          },
          icon: const Icon(Icons.camera),
          label:const  Text("Take Picture")),
    );
  }
}
