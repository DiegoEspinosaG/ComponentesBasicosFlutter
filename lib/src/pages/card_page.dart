import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[

          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),

        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(

      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de ésta tarjeta'),
            subtitle: Text('Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),

    );

  }

  Widget _cardTipo2() {

    final card = Container(
      /*clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),*/
      child: Column(
        children: <Widget>[

          FadeInImage(

            image: NetworkImage('https://www.xtrafondos.com/wallpapers/paisaje-de-android-1845.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,

          ),

          /*Image(
            image: NetworkImage('https://www.xtrafondos.com/wallpapers/paisaje-de-android-1845.jpg')
          ),*/
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No se que poner')
          )

        ],
      ),
    );

    return Container(      

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2,10)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),

    );

  }

}