import '../widget/categories.dart';
import '../widget/main_image.dart';
import '../Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'NamedIcon.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ));
  }

  final List<FadeAnimation> _appBarActions = [
    FadeAnimation(
      1.2,
      NamedIcon(
        text: '',
        iconData: Icons.notifications,
        notificationCount: 12,
        onTap: () {},
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          actions: _appBarActions,
          iconTheme: IconThemeData(color: Colors.white),
          expandedHeight: MediaQuery.of(context).size.height / 3,
          flexibleSpace: FlexibleSpaceBar(
            background: MainImage(),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Text(
              'تصفح حسب السيارة',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 65,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Center(
                    child: Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            child: Image.asset('assets/images/1.png'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'SUV',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 3,
              color: Colors.black12,
            ),

            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تصفح حسب الماركة',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الكل',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 65,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: 80,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          child: Image.asset('assets/images/2.png'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 3,
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.black12,
            ),

            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الوكلاء',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الكل',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 180,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('assets/images/background.jpg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Audi A8',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'تبداء من 18000 د.م',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 3,
              margin: EdgeInsets.only(top: 15, bottom: 5),
              color: Colors.black12,
            ),

            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'فيديو',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الكل',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 180,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('assets/images/background.jpg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Audi A8',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'تبداء من 18000 د.م',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Categories(),
            // Categories(),
          ]),
        )
      ],
    );
  }
}
