import 'package:flutter/material.dart';

//Vista Avatar
class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esta es la pagina de avatar "),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/vector-gratis/dibujos-animados-perfil-mujer_18591-58475.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("AT"),
              backgroundColor: Color.fromARGB(255, 192, 119, 211),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://media.istockphoto.com/vectors/young-laughing-woman-emotions-smile-happy-excited-calm-girl-face-vector-id1337407278?k=20&m=1337407278&s=170667a&w=0&h=Tf_6Fu1R18Bq6Xi4iffUzVAnT-iYIlwLqsm6WY0Rtgc='),
          placeholder: AssetImage('assets/cargando.gif'),
        ),
      ),
    );
  }
}
