import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_final/pages/home/provider/bottom_nav_provider.dart';
import 'package:trabajo_final/pages/home/widgets/event_year.dart';
import 'package:trabajo_final/pages/home/widgets/for_you.dart';
import 'package:trabajo_final/pages/home/widgets/nav_bar.dart';
import 'package:trabajo_final/pages/home/widgets/near_you.dart';
import 'package:trabajo_final/pages/home/widgets/recomended.dart';
import 'package:trabajo_final/pages/home/widgets/search_item.dart';
import 'widgets/categories.dart';
import 'widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202630),
      body: Stack(
        children: const [_Body(), NavBar()],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context, listen: false);
    return CustomScrollView(
      controller: provider.controller,
      slivers: const [
        HomeHeader(),
        _HomeBody(),
      ],
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SearchBar(),
          const SizedBox(height: 16),
          const Categories(),
          const SizedBox(height: 16),
          const EventOfTheYear(),
          const SizedBox(height: 16),
          const NearYou(),
          const SizedBox(height: 16),
          const ForYou(),
          const SizedBox(height: 16),
          const Recomended(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
