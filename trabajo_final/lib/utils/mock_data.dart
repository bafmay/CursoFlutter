import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/home/model/category.dart';
import 'package:trabajo_final/pages/home/model/event.dart';
import 'package:trabajo_final/pages/home/model/recommend.dart';
import 'package:trabajo_final/pages/profile/model/profile_model.dart';

class MockData {
  static List<Event> getNearItems() {
    List<Event> events = [];
    events.add(Event(
      "The Weekend",
      "CONCERT",
      "Nov 22",
      "assets/img/near1.jpg",
    ));
    events.add(Event(
      "New Year Eve",
      "PARTY",
      "Dec 31",
      "assets/img/near2.jpg",
    ));
    events.add(Event(
      "Carnival",
      "CELEBRATION",
      "Oct 12",
      "assets/img/near3.jpg",
    ));
    return events;
  }

  static List<Category> getCategories() {
    List<Category> cat = [];
    cat.add(
      Category(
        "Concerts",
        "15 events",
        Colors.white,
        Colors.purple.shade400,
        const Icon(
          Icons.movie,
          color: Colors.white,
        ),
      ),
    );

    cat.add(
      Category(
        "Parties",
        "42 events",
        Colors.white,
        Colors.green.shade400,
        const Icon(
          Icons.movie,
          color: Colors.white,
        ),
      ),
    );

    cat.add(
      Category(
        "Theater",
        "5 events",
        Colors.white,
        Colors.orange.shade400,
        const Icon(
          Icons.airplane_ticket,
          color: Colors.white,
        ),
      ),
    );

    cat.add(
      Category(
        "Movies",
        "22 events",
        Colors.white,
        Colors.pink.shade400,
        const Icon(
          Icons.movie,
          color: Colors.white,
        ),
      ),
    );

    return cat;
  }

  static List<Recommend> getRecommend() {
    List<Recommend> items = [];
    items.add(
      Recommend(
        title: "Curso Flutter",
        date: "FRI, NOV 15 - 19:00",
        joinned: 11,
        path: 'assets/img/curso.png',
        price: 350,
      ),
    );
    items.add(
      Recommend(
        title: "Artificial Intelligence",
        date: "SAT, OCT 15 - 20:00",
        joinned: 43,
        path: 'assets/img/ai.jpg',
        price: 140,
      ),
    );
    items.add(
      Recommend(
        title: "Painting",
        date: "MON, JUN 37 - 19:00",
        joinned: 15,
        path: 'assets/img/painting.jpg',
        price: 30,
      ),
    );
    items.add(
      Recommend(
        title: "Yoga Masterclass",
        date: "FRI, JUN 27 - 20:00",
        joinned: 25,
        path: 'assets/img/yoga.jpg',
        price: 99,
      ),
    );
    return items;
  }
}

const itemsNavBar = [
  'assets/icons/home.svg',
  'assets/icons/users.svg',
  'assets/icons/add.svg',
  'assets/icons/job.svg',
  'assets/icons/bell.svg',
];

List<ProfileModel> profileItems = [
  ProfileModel(title: "Settings", icon: Icons.settings),
  ProfileModel(title: "Billing Details", icon: Icons.card_giftcard),
  ProfileModel(title: "User management", icon: Icons.person),
  ProfileModel(title: "Information", icon: Icons.info),
  ProfileModel(title: "Log out", icon: Icons.logout),
];
