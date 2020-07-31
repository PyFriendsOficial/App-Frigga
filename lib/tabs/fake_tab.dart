import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FakeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> containers = [
      Container(),
      Container(
          child: Center(
        child: Text(
          "Você ainda não adicionou nada ao seu carrinho. 😣",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      )),
      HelpTab(),
    ];

    return DefaultTabController(
      length: 3,
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
              Tab(
                text: "Ajuda",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
