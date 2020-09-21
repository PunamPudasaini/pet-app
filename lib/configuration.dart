import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primarycolor = Color(0xff416d6d);

List<BoxShadow> list = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0,10)),
];

List<Map> drawerItem = [
  {'Icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'Icon': Icons.mail, 'title': 'Donation'},
  {'Icon': FontAwesomeIcons.plus, 'title': 'Add pet'},
  {'Icon': Icons.favorite, 'title': 'Favorites'},
  {'Icon': Icons.mail, 'title': 'Messages'},
  {'Icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},

];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'assets/cat.png'},
  {'name': 'Dogs', 'iconPath': 'assets/dog.png'},
  {'name': 'Horse', 'iconPath': 'assets/horse.png'},
  {'name': 'Parrot', 'iconPath': 'assets/parrot.png'},
  {'name': 'Rabbits', 'iconPath': 'assets/rabbit.png'},
];