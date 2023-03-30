import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/user.dart';

import 'home_fragment_widgets.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  final ScrollController _scrollController = ScrollController();
  late Size size;

  @override
  void initState() {
    _scrollController.addListener(() {
      _scrollController.offset.toString();
      print("user sedang scroll");
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HeaderWidget(
              user: widget.user,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SearchFieldWidget(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: SectionTitle(
                      label: "Hotest News",
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.width * 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HotestNewsCard(
                      size: size,
                      newsTitle: "Ini Adalah foto Rival :D",
                      pictureUrl: "https://picsum.photos/1080/690",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SectionTitle(
                      label: "Latest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: LatestNewsIndexCardSection(
                      size: size,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
