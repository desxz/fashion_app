import 'package:com/detay.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fashion App",
          style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            //Hikaye Akışı Kısmı
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani("images/model1.jpeg", "images/chanellogo.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("images/model2.jpeg", "images/louisvuitton.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("images/model3.jpeg", "images/chloelogo.png"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("images/model1.jpeg", "images/chanellogo.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("images/model2.jpeg", "images/louisvuitton.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("images/model3.jpeg", "images/chloelogo.png"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              //Post Yapısı
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.blue,
              child: Container(
                color: Colors.white,
                height: 500,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 5, 20),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/model1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "34 mins. ago",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                      child: Text(
                        " This offical website features a ribberd knit zipper jacket that is modern and stylish."
                        "It looks very temparament and is recommend to friends.",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"images/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "images/modelgrid1.jpeg", //Primary Key tag.
                            child: Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                              height: 225,
                              width: MediaQuery.of(context).size.width / 2 - 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                    image: AssetImage("images/modelgrid1.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"images/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "images/modelgrid2.jpeg",
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 2.5),
                                  height: 110,
                                  width: MediaQuery.of(context).size.width / 2 - 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                        image: AssetImage("images/modelgrid2.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"images/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "images/modelgrid3.jpeg",
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10, 0),
                                  height: 110,
                                  width: MediaQuery.of(context).size.width / 2 - 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                        image: AssetImage("images/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                              child: Text(
                            "#Louis Vuitton",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                              child: Text(
                            "#Chloe",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 5, 2),
                          child: Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.3),
                            size: 30,
                          ),
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 5, 2),
                          child: Icon(
                            Icons.chat,
                            color: Colors.brown.withOpacity(0.3),
                            size: 24,
                          ),
                        ),
                        Text(
                          "1.7K",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(170, 0, 5, 2),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red.withOpacity(1),
                            size: 24,
                          ),
                        ),
                        Text(
                          "25",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", color: Colors.white, fontSize: 14),
            ),
          ),
        )
      ],
    );
  }
}
