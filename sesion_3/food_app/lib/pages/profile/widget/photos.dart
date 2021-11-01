import 'package:flutter/material.dart';

class ProfilePhotos extends StatelessWidget {
  const ProfilePhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _cards(
              "https://recetinas.com/wp-content/uploads/2018/06/anticuchos-de-corazon.jpg"),
          _cards(
              "https://images-gmi-pmc.edge-generalmills.com/b98eba53-5dc7-4301-91db-3d3faf889aec.jpg"),
          _cards(
              "https://es.cravingsjournal.com/wp-content/uploads/2019/11/alitas-bbq-6-500x375.jpg"),
          _cards(
              "https://micomidaperuana.com/wp-content/uploads/2019/09/leche-tigre.jpg"),
          _cards(
              "https://www.okrecetas.com/recetas-de-sopas/img600/mazamorra.jpg"),
        ],
      ),
    );
  }

  Widget _cards(String path) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
