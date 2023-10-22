import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void LoginFunction(String email, String pass, BuildContext context) async {}

Future<int> fetchImages() async {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final ListResult result = await storage.ref('recipes1').listAll();

  for (final Reference ref in result.items) {
    final imageUrl = await ref.getDownloadURL();

    recipes1img.add(imageUrl);
  }
  print(recipes1img);

  final ListResult result2 = await storage.ref('images').listAll();
  for (final Reference ref in result2.items) {
    final im = await ref.getDownloadURL();
    images.add(im);
  }
  return 1;
}

Future<int> fetchdetails() async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot2 = await ref.child('count').get();
  int c = 1;
  if (snapshot2.exists) {
    c = snapshot2.value as int;
    print(c);
  }

  for (int i = 1; i <= c; i++) {
    final snapshot = await ref.child('recipes2/$i').get();
    if (snapshot.exists) {
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
      recipes1.add(Recipes(
          imgUrl: '',
          name: values['name'],
          id: values['id'],
          ingredients: List<String>.from(values['ingredients']),
          instructions: List<String>.from(values['instructions']),
          userRating: List<String>.from(values['userRating']),
          total: values['total'],
          n: values['n']));
    }
  }
  print(recipes1[0].ingredients);
  return 0;
}

// Future<int> fetchInternships() async {
//   final ref = FirebaseDatabase.instance.ref();
//   final snapshot2 = await ref.child('count').get();
//   int c = 1;
//   if (snapshot2.exists) {
//     Map<dynamic, dynamic> cc = snapshot2.value as Map<dynamic, dynamic>;
//     c = cc['count'];
//   }
//   for (int i = 1; i <= c; i++) {
//     final snapshot = await ref.child('details/$i').get();
//     if (snapshot.exists) {
//       Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
//       recipes1.add(Details(
//           color: values['color'],
//           visibility: values['visibility'],
//           role: values['role'],
//           name: values['name'],
//           duration: values['duration'],
//           stipend: values['stipend'],
//           about: values['desc']));
//     }
//   }
//   print(internships);
//   print('ho gaya');
//   return 0;
// }