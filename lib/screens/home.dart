import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/appbar.dart';

import '../model/shorts.dart';
import '../model/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> head = [
    'All',
    'Live',
    'Gaming',
    'Music',
    'Movies',
    'Dance',
    'Series'
  ];

  List<Shorts> shorts=[
    new Shorts(title: "Fred's Samba Skill", views: '9.9M', image: 'assets/shorts/fred.jpg'),
    new Shorts(title: "David Beckham pays his respects to Queen", views: '169k', image: 'assets/shorts/david.jpg'),
    new Shorts(title: "Fred's Samba Skill", views: '9.9M', image: 'assets/shorts/fred.jpg'),
    new Shorts(title: "Fred's Samba Skill", views: '9.9M', image: 'assets/shorts/fred.jpg'),
    new Shorts(title: "Fred's Samba Skill", views: '9.9M', image: 'assets/shorts/fred.jpg'),

  ];

  List<Videos> videos=[
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),
    new Videos(views: '1.6M', channel: 'Byline', title: 'British Public React To Death of the Queen', days: '10',image: 'assets/queen.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(appbar: AppBar()),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.short_text),label: 'Shorts'),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),label: 'subscription'),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),label: 'library'),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: [
                Container(
                 color: Theme.of(context).appBarTheme.backgroundColor,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: head.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius:BorderRadius.circular(20)
                          ),
                          child: Center(child: Text('${head[index]}')),
                        );
                      }),
                ),
                Container(
                  height: 320,
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network('https://brandlogos.net/wp-content/uploads/2022/06/youtube_shorts-logo_brandlogos.net_vhmca.png',height: 25,width: 25,),
                          SizedBox(width: 5),
                          Text('Shorts',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: 5),
                      Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: shorts.length,
                              itemBuilder: (context,index){
                                return Card(
                                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                  color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Positioned(child: Image.asset('${shorts[index].image}',height: 320,width:150,fit: BoxFit.cover,)),
                                      Positioned(
                                          left: 5,
                                          bottom:5,
                                          child: Container(
                                            width:150,
                                            decoration:BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [Colors.black12.withOpacity(0),
                                                      Colors.black12
                                                    ]
                                                )
                                          ),
                                            child: Column(
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                     Text('${shorts[index].title}',style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text('${shorts[index].views} views')
                                              ],
                                            ),
                                          )
                                      ),


                                    ],
                                  ),
                                ) ;
                              })
                      )
                    ],
                  ),
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: videos.length,
                        itemBuilder: (context,index){
                        return Card(
                            child: Container(
                              color: Theme.of(context).appBarTheme.backgroundColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('${videos[index].image}'),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                    child: Row(
                                      children: [
                                        CircleAvatar(),
                                        SizedBox(width: 10),
                                        Expanded(
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('${videos[index].title}'),
                                                SizedBox(height: 5),
                                                Text('${videos[index].channel} · ${videos[index].views} views · ${videos[index].days} days ago',style: TextStyle(fontSize: 12,color: Colors.grey.shade500),),
                                              ],
                                            )

                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        }),
                  ),

              ],
            ),
          ),
        ));
  }
}
