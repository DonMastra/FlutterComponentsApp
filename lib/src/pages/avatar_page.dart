import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page!'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(1.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/spiderman/images/8/87/Stan_Lee.png/revision/latest/top-crop/width/360/height/450?cb=20131218184054&path-prefix=es'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.deepPurple,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://peru21.pe/resizer/XQsfE2KVlCTChD227bsZRpYNl4Q=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/4QQVMIFAR5EQHLPHBHGBLSXJDU.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
