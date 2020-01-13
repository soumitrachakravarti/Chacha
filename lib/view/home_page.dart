import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212721),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/89'),
                ),
                Image.asset('assets/logo.png'),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 21.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 144,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55.0),
                  topRight: Radius.circular(55.0)),
            ),
            child: ListView(
              primary: false,
              // padding: EdgeInsets.only(top: 34.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 34.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 233,
                    child: ListView(
                      children: <Widget>[
                        _buildChaiItem('assets/black.png', 'Black', '₹30'),
                        _buildChaiItem('assets/classic.png', 'Classic', '₹30'),
                        _buildChaiItem('assets/ginger.png', 'Ginger', '₹30', 2, true),
                        _buildChaiItem('assets/cardamom.png', 'Cardamom', '₹30', 1, true),
                        _buildChaiItem('assets/cinnamon.png', 'Cinnamon', '₹30'),
                        _buildChaiItem('assets/mint.png', 'Mint', '₹30'),
                        _buildChaiItem('assets/turmeric.png', 'Turmeric', '₹30'),
                        _buildChaiItem('assets/lemongrass.png', 'Lemongrass', '₹30'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('3'),
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Color(0xFF212721),
        elevation: 0.0,
      ),
    );
  }

  Widget _buildChaiItem(String imgPath, String chaiName, String price, [int quantity, bool show = false]) {
    return Padding(
        padding: EdgeInsets.only(left: 34.0, right: 34.0, top: 13.0),
        child: InkWell(
            onTap: () {
  
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 144.0,
                          width: 144.0)),
                  SizedBox(width: 21.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(chaiName,
                            style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212721))),
                        Text(price,
                            style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212721))
                                ),
                        Visibility(
                          visible: show,
                          child: Text(
                            'x $quantity',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF212721),
                            ),
                          ),
                        ),
                      ])
                ])),
                IconButton(
                    icon: Icon(Icons.add),
                    color: Color(0xFF212721),
                    onPressed: () {})
              ],
            )));
  }
}
