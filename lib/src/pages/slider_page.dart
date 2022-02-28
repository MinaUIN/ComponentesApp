import 'package:flutter/material.dart';

//Vista Slider
class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valSlider = 100.0;
  bool _bloqCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _Switch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Color.fromARGB(255, 170, 119, 190),
        label: "Tamaño de la imagen",
        value: _valSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloqCheck)
            ? null
            : (valor) {
                setState(() {
                  _valSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/564x/55/74/16/5574160879a96dd2c2e1e3db2d72bb05.jpg'),
      width: _valSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text("Bloquear slider"),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor!;
          });
        });
  }

  Widget _Switch() {
    return SwitchListTile(
        title: Text("Bloquear slider"),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor;
          });
        });
  }
}
