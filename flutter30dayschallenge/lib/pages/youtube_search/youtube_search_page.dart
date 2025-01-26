import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/model/youtube_search_model.dart';

import 'model/item_data.dart';

class YoutubeSearchPage extends StatefulWidget {
  const YoutubeSearchPage({super.key});

  @override
  State<YoutubeSearchPage> createState() => _YoutubeSearchPageState();
}

class _YoutubeSearchPageState extends State<YoutubeSearchPage> {
  bool _isSearch = false;
  bool _isLoading = true;
  int navIndex = 0;
  List<ItemData> items = [];

  @override
  void initState() {
    // TODO: implement initState
    _loadMockDataFromAssets();
    super.initState();
  }

  Future<void> _loadMockDataFromAssets() async {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    final assetsData =
        await rootBundle.loadString('assets/youtube_search.json');
    final res = YoutubeSearchModel.fronJson(jsonDecode(assetsData));
    // print(res.items?[0].snippet?.thumbnails?.high?.url);
    items = res.items!;
  }

  Widget _searchWidget() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isSearch = false;
            });
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Search Youtube',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.mic,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearch == true
            ? _searchWidget()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    SizedBox(
                      height: 40,
                      child: Image.asset('assets/youtube_logo.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Youtube'),
                  ]),
                  Row(
                    children: [
                      Icon(Icons.notification_important),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          if (_isSearch == false) {
                            setState(() {
                              _isSearch = true;
                            });
                          }
                        },
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/profile2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
      bottomNavigationBar: _isLoading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : BottomNavigationBar(
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              currentIndex: navIndex,
              onTap: (index) {
                setState(() {
                  navIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: "Explore"),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money), label: "Subscription"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.wysiwyg), label: "Library"),
              ],
            ),
      body: ListView.builder(
        itemCount: items?.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/playVideo', arguments: items[index]);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Image.network(
                      items[index].snippet!.thumbnails!.high!.url!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${items[index].snippet!.channelTitle}',
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    maxLines: 3,
                    '${items[index].snippet!.description}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
