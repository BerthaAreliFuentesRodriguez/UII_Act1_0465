import 'package:flutter/material.dart';
import 'package:fuentes_uii_act1_0465/pantallas0465/panel0465/widgets0465/item_comics0465.dart';

class PanelPantalla0465 extends StatelessWidget {
  const PanelPantalla0465({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcfbb91),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/BerthaAreliFuentesRodriguez/Img_FlutterFlow_IOS_6J/main/icon.jpg"),
            ),
          )
        ],
        title: Text(
          'Comics Fuentes0465',
          style: const TextStyle(color: Color(0xfff8f6f0)),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffab6274),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "¿Que quieres leer hoy?",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xfff2e4df))),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/BerthaAreliFuentesRodriguez/practica1_6J_IOS/main/drawer_fondo.jpg"))),
          ),
          ListTile(
            title: Text("Top Comics"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemcomic()],
          ))
        ],
      ),
    );
  }
}
