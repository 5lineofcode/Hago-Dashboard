import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hago_dashboard/helper/color_generator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gameItems = [
    {
      "game_name": "Sheep Fight",
      "image": "assets/images/games/game1.png",
      "is_new": false,
      "player": 4200,
    },
    {
      "game_name": "Smash of Berserker",
      "image": "assets/images/games/game2.png",
      "is_new": true,
      "player": 1200,
    },
    {
      "game_name": "Fruit Master",
      "image": "assets/images/games/game3.png",
      "is_new": false,
      "player": 1450,
    },
    {
      "game_name": "Knife Hit",
      "image": "assets/images/games/game4.png",
      "is_new": false,
      "player": 266,
    },
    {
      "game_name": "Statues",
      "image": "assets/images/games/game5.png",
      "is_new": false,
      "player": 2044,
    },
    {
      "game_name": "Hago Farm",
      "image": "assets/images/games/game6.png",
      "is_new": true,
      "player": 3124,
    },
    {
      "game_name": "Hago Idol",
      "image": "assets/images/games/game7.png",
      "is_new": false,
      "player": 2150,
    },
    {
      "game_name": "Hexagon Fight",
      "image": "assets/images/games/game8.png",
      "is_new": false,
      "player": 1576,
    },
    {
      "game_name": "Super Pursuit",
      "image": "assets/images/games/game9.png",
      "is_new": false,
      "player": 322,
    },
    {
      "game_name": "Billiard",
      "image": "assets/images/games/game10.png",
      "is_new": false,
      "player": 992,
    },
    {
      "game_name": "Blaster Shooter",
      "image": "assets/images/games/game11.png",
      "is_new": true,
      "player": 487,
    },
    {
      "game_name": "Bubble Shooter",
      "image": "assets/images/games/game12.png",
      "is_new": false,
      "player": 668,
    },
    {
      "game_name": "ET.io",
      "image": "assets/images/games/game13.png",
      "is_new": false,
      "player": 608,
    },
    {
      "game_name": "Chess",
      "image": "assets/images/games/game14.png",
      "is_new": false,
      "player": 5200,
    },
    {
      "game_name": "Checkers",
      "image": "assets/images/games/game15.png",
      "is_new": false,
      "player": 4511,
    },
    {
      "game_name": "4-Player Ludo",
      "image": "assets/images/games/game16.png",
      "is_new": true,
      "player": 122,
    },
    {
      "game_name": "Nyan Cat",
      "image": "assets/images/games/game17.png",
      "is_new": false,
      "player": 902,
    },
    {
      "game_name": "Tennis Go",
      "image": "assets/images/games/game18.png",
      "is_new": false,
      "player": 78,
    },
  ];

  var peopleItems = [
    {
      "image": "assets/images/people/tesla.jpg",
      "name": "Nikola Tesla",
      "room_name": "Bensin Air",
      "views": 65,
    },
    {
      "image": "assets/images/people/steve.jpg",
      "nama": "Steve Jobs",
      "room_name": "Iphone Gratis",
      "views": 102,
    },
    {
      "image": "assets/images/people/william.jpg",
      "name": "William",
      "room_name": "Marketplace",
      "views": 104,
    },
    {
      "image": "assets/images/people/mayuko.jpg",
      "name": "Mayuko",
      "room_name": "Curhat~",
      "views": 103,
    },
    {
      "image": "assets/images/people/faisal.jpg",
      "name": "Faisal",
      "room_name": "Dart tutorial",
      "views": 88,
    },
    {
      "image": "assets/images/people/zaky.jpg",
      "name": "Zaky",
      "room_name": "Kantor Baru",
      "views": 66,
    },
  ];

  @override
  Widget build(BuildContext context) {
    ColorGenerator.shuffleColor();
    peopleItems.shuffle();

    var blankSpace = Container(
      height: 10.0,
    );

    var playWithFriends = Expanded(
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Color(0xff315dff),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "PLAY WITH FRIENDS",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/sms.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/facebook.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/line.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    var discoverPeople = Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Color(0xffff4163),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "DISCOVER PEOPLE",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 36,
              padding: EdgeInsets.all(4.0),
              child: Center(
                child: Container(
                  width: 125.0,
                  child: ListView.builder(
                    itemCount: peopleItems.length > 4 ? 4 : peopleItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 4.0),
                        width: 24.0,
                        height: 24.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(peopleItems[index]["image"]),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    var mainHeader = Row(
      children: <Widget>[
        playWithFriends,
        Container(
          width: 10.0,
        ),
        discoverPeople
      ],
    );

    var firstWayToGetGameList = Container(
      height: 585,
      child: IgnorePointer(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 136.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                      color: Color(0xff5abc31),
                      image: DecorationImage(
                        image: AssetImage(gameItems[index]["image"]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: ColorGenerator.getColor(index),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(gameItems[index]["game_name"],
                            style: TextStyle(color: Colors.white)),
                        Container(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text(
                                gameItems[index]["player"].toString() +
                                    "Players",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "aria",
                                    fontSize: 10.0),
                              ),
                            ),
                            gameItems[index]["is_new"] == false
                                ? Container()
                                : Container(
                                    height: 15.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.0)),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: Center(
                                      child: Text("NEW",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8.0)),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );

    secondWayToGetGameList(startIndex) {
      var customGameItems = gameItems;

      return Container(
        height: 380,
        child: IgnorePointer(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(4, (index) {
              var item = Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 136.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                        color: Color(0xff5abc31),
                        image: DecorationImage(
                          image:
                              AssetImage(customGameItems[startIndex]["image"]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: ColorGenerator.getColor(index),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(customGameItems[startIndex]["game_name"],
                              style: TextStyle(color: Colors.white)),
                          Container(
                            height: 4.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  customGameItems[startIndex]["player"]
                                          .toString() +
                                      "Players",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "aria",
                                      fontSize: 10.0),
                                ),
                              ),
                              customGameItems[startIndex]["is_new"] == false
                                  ? Container()
                                  : Container(
                                      height: 15.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow[800],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Colors.white,
                                          )),
                                      child: Center(
                                        child: Text("NEW",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8.0)),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );

              startIndex++;
              return item;
            }),
          ),
        ),
      );
    }

    var peopleYouMayKnow = Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xff5abc31),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Image.asset(
                  "assets/images/smile_cute.png",
                  width: 24.0,
                  height: 24.0,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "PEOPLE YOU MAY KNOW",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Icon(Icons.arrow_right, color: Colors.white),
            ],
          ),
          Container(
            height: 145.0,
            padding: EdgeInsets.all(4.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peopleItems.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(4.0),
                  width: 90.0,
                  height: 10.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        child: Image.asset(
                          peopleItems[index]["image"],
                          fit: BoxFit.fill,
                          width: 90.0,
                          height: 90.0,
                        ),
                      ),
                      Positioned(
                          top: 70,
                          child: Container(
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.place,
                                      color: Colors.purple, size: 20.0),
                                  Text(
                                    "< 5Km",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 30.0,
                            child: RaisedButton(
                              color: Colors.yellow[700],
                              child: Icon(Icons.add, color: Colors.white),
                              onPressed: () {},
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

    var chatRoom = Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Color(0xff5abc31),
          image: DecorationImage(
            image: AssetImage("assets/images/bg_belang.png"),
            fit: BoxFit.fill,
          )),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4.0),
                child: Image.asset("assets/images/owl.png"),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "CHAT ROOM",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Icon(Icons.arrow_right, color: Colors.white),
            ],
          ),
          Container(
            height: 150.0,
            padding: EdgeInsets.all(4.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peopleItems.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(4.0),
                  width: 110.0,
                  height: 10.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              color: Colors.white,
                              child: Center(
                                child: Text(peopleItems[index]["room_name"],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: ColorGenerator.getColor(index),
                                    )),
                              ),
                            ),
                            Container(
                              height: 50.0,
                              color: Color(0xffeeefff),
                              child: Center(
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(peopleItems[index]["image"]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 30,
                        child: Container(
                          height: 20,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14.0)),
                            color: ColorGenerator.getColor(index),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                size: 14.0,
                                color: Colors.white,
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

    var sliderImages = [
      {
        "image": "assets/images/slider_game1.png",
      },
      {
        "image": "assets/images/slider_game2.png",
      },
      {
        "image": "assets/images/slider_game3.png",
      },
      {
        "image": "assets/images/slider_game4.png",
      },
      {
        "image": "assets/images/slider_game5.png",
      },
    ];

    var worldRecord = Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xff5abc31),
        image: DecorationImage(
          image: AssetImage("assets/images/world_record.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 50,
            top: 10,
            child: Container(
              width: 110.0,
              height: 100.0,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    sliderImages[index]["image"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: sliderImages.length,
                itemWidth: 90.0,
                viewportFraction: 0.6,
                layout: SwiperLayout.STACK,
                autoplay: true,
              ),
            ),
          ),
        ],
      ),
    );

    var dressParty = Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xff5abc31),
        image: DecorationImage(
          image: AssetImage("assets/images/dress_party.png"),
          fit: BoxFit.fill,
        ),
      ),
    );

    var multiplayer = Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xff5abc31),
        image: DecorationImage(
          image: AssetImage("assets/images/multiplayer.png"),
          fit: BoxFit.fill,
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff3f3f3),
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/smile.png",
                scale: 0.8,
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    scale: 0.8,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/chat.png",
                scale: 0.7,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                mainHeader,
                blankSpace,
                firstWayToGetGameList,
                blankSpace,
                peopleYouMayKnow,
                blankSpace,
                chatRoom,
                blankSpace,
                secondWayToGetGameList(6),
                blankSpace,
                worldRecord,
                blankSpace,
                secondWayToGetGameList(10),
                blankSpace,
                dressParty,
                blankSpace,
                secondWayToGetGameList(14),
                blankSpace,
                multiplayer,
              ],
            ),
          ),
        ));
  }
}
