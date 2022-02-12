import 'package:flutter/material.dart';
import 'package:pharmashots/Screen/animal_health_screen.dart';
import 'package:pharmashots/Screen/home_screen.dart';
import 'package:pharmashots/Screen/list_screen.dart';
import 'package:pharmashots/Screen/profile_page.dart';
import 'package:pharmashots/Screen/search_screen.dart';
import 'package:pharmashots/Screen/search_screen_2.dart';
import 'package:pharmashots/routs.dart';
import 'Screen/discover_screen.dart';
import 'Screen/get_notification.dart';
import 'Screen/get_started1.dart';
import 'Screen/home.dart';
import 'Screen/image_screen.dart';
import 'Screen/interests_screen.dart';
import 'Screen/top_doctors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
        )
      ),
  home: HomeState(),
 //      initialRoute: MyRoutes.GetStarted1Rout,
 //      routes: {
 //        // "/": (context) => OnBoardingPage(),
 //        MyRoutes.ImageScreenRout: (context) => ImageScreen(),
 //        MyRoutes.HomePagerouts: (context) => HomePage(),
 //        MyRoutes.ListPageRout: (context) => ListPage(),
 //        MyRoutes.ProfilePageRout: (context) => ProfilePage(),
 //        MyRoutes.SearchScreenRout: (context) => SearchScreen(),
 //        MyRoutes.AnimalHealthRout: (context) => AnimalHealth(),
 //        MyRoutes.NotificationPageRout: (context) => NotificationPage(),
 //        MyRoutes.TopDoctorsRout: (context) => TopDoctors(),
 //        MyRoutes.SearchScreen2Rout: (context) => SearchScreen2(),
 //        MyRoutes.DiscoverPageRout: (context) => DiscoverPage(),
 //        MyRoutes.GetStarted1Rout: (context) => GetStarted1(),
 //      },
    );
  }
}

