import 'package:flutter/material.dart';
import 'package:khelo_test/src/config/constants/string_constants.dart';
import '../widgets/youtube_player.dart';
import 'bottom_nav_bar/bottom_nav_bar.dart';
import '../widgets/common_header.dart';
import 'counting_widget.dart/counting_widget.dart';
import '../widgets/game_list.dart';
import '../widgets/header_widget.dart';
import '../widgets/language_container.dart';
import '../widgets/user_card.dart';
import 'curosel/curosel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return homeScreenContent(context);
  }

  Scaffold homeScreenContent(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingButton(),
        bottomSheet: const BottomNavBar(),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                backgroundColor: Colors.black,
                flexibleSpace: CommonHeader(),
                floating: false,
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const CuroselWidget(),
                    const LanguageContainer(),
                    const CountingWidget(),
                    const Header(
                      title: Strings.liveWithdraw,
                    ),
                    const UserList(),
                    youtubePlayerWidget(),
                    divider(),
                    const Header(
                      title: Strings.games,
                    ),
                    const GameListWidget(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
