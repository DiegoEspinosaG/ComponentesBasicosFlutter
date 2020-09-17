import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[

            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),

          ],
        ),
      ),

    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_bloquearCheck) ? null : (valor) {
        
        setState(() {
          _valorSlider = valor;
        });

      }
    );

  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/6b/1b/b4/6b1bb4b9715dce00cca0b31d10e6cbee.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

  Widget _crearCheckBox() {

    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        
        setState(() {
          _bloquearCheck = valor;
        });

      }
    );*/

    return CheckboxListTile(

      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        
        setState(() {
          _bloquearCheck = valor;
        });

      }

    );

  }

  Widget _crearSwitch() {

    return SwitchListTile(

      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        
        setState(() {
          _bloquearCheck = valor;
        });

      }

    );

  }

}