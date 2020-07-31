import 'dart:ui';

import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FakeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> containers = [
      CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(1.0),
            sliver: SliverGrid.count(
              crossAxisCount: 1,
              crossAxisSpacing: 1.0,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "PASTEL",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('assets/pastel.jpg'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "JAPONÊS",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('assets/japanesefood.png'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "PIZZA",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('assets/pizza.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Container(
        child: Center(
          child: Text(
            "Você ainda não adicionou nada ao seu carrinho. 😣",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Frigga",
          ),
          centerTitle: true,
          backgroundColor: Colors.purple[800],
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.purple[300],
            ),
            tabs: <Widget>[
              Tab(
                text: "Inicio",
              ),
              Tab(
                text: "Carrinho",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.purple[800],
          child: Container(
            height: 50.0,
          ),
        ),
      ),
    );
  }
}
