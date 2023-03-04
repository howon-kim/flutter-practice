import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();

}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),

        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 600,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/R.6c9d2d747e5cf5b9c86d90d2350ecb3e?rik=sQyPgHT2WGWHTQ&riu=http%3a%2f%2fwww.berkeleyside.com%2fwp-content%2fuploads%2f2010%2f12%2fUC-Berkeley.jpg&ehk=a55X9seKgQw9Fhry9fODCHxdRNHp0G3K%2b%2fB18bsbVc0%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover
                  )
              )
            ),

            Container(
              alignment: Alignment.center,
              height: 600,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/R.ac297ec2c8c3bf492a3c08c827e6117b?rik=%2fE5bEGF9CO6L4w&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover
                  )
              )
            ),

            Container(
              alignment: Alignment.center,
              height: 600,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/R.dc53125d71c1c5d8bbc274afccc9f2ab?rik=JLP7vwTyoIwnmg&riu=http%3a%2f%2fimages.fineartamerica.com%2fimages-medium-large%2fbrown-university-john-greim.jpg&ehk=pcbDYUukdH2p90p24FZaevR1iPVxJhkU5FvOrFt0E6k%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover
                  )
              )
            )

          ])
      )
    );
  }
}