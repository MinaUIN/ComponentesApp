import 'package:flutter/material.dart';

//Vista CardPage
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text("Tarjeta titulo"),
          subtitle: Text("¡¡Hola!! Bienvenido :) "),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //  clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/santorini-island-greece-picture-id1145450965?k=20&m=1145450965&s=170667a&w=0&h=Be52AidKhl6XsBxG_NBKkmYULyQ0gbvERCEGh47_e6w='),
            placeholder: AssetImage('assets/cargando.gif'),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Isla de Santorini, Grecia"))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
