import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'data.dart';

class Images extends StatefulWidget {
  Images({super.key});

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  Future<void> uploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      String imageName = DateTime.now().millisecondsSinceEpoch.toString();

      try {
        // Reference to the Firebase Storage bucket and path to store the image
        Reference ref =
            FirebaseStorage.instance.ref().child("images/$imageName");

        // Upload the image to Firebase Storage
        await ref.putFile(imageFile);

        // Get the download URL of the uploaded image
        String imageUrl = await ref.getDownloadURL();

        // Update the UI by prepending the new image URL to the list
        setState(() {
          images.insert(0, imageUrl);
        });

        print("Image uploaded successfully.");
      } catch (e) {
        print("Error uploading image: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD5E4E2),
        body: Padding(
          padding: EdgeInsets.only(
              top: height * 0.05, left: height * 0.05, right: height * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Refreshing Cocktails!',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: uploadImage, // Call the uploadImage function
                      icon: Icon(Icons.add),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                for (String imageUrl in images)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        imageUrl,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
