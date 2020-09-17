import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://autohub.de/wp-content/uploads/2018/01/BMW-Logo-lightbox-a0016669-422907.jpg'),
              radius: 30,
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              right: 10
            ),
            child: CircleAvatar(
              child: Text('BM'),
              backgroundColor: Colors.brown,
            ),
          )

        ],
      ),

      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage('https://www.bennetts.co.uk/-/media/bikesocial/2020-january-images/2020-bmw-f900r-review/bmw-f900r-2020-review-spec-price_30.ashx?h=493&w=740&la=en&hash=EAD8A1ACEEC0823D18B633E0229B251F97C05907'),
        ),
      ),

    );
  }

}