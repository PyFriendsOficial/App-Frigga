import 'package:app_violencia/tabs/fake_tab.dart';
import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';


class FakePage extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        FakeTab(),
        HelpTab(),
      ],
    );
  }
}
