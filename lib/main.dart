import 'package:flutter/material.dart';
import 'package:pharmashots/Screen/animal_health_screen.dart';
import 'package:pharmashots/Screen/home_screen.dart';
import 'package:pharmashots/Screen/list_screen.dart';
import 'package:pharmashots/Screen/profile_page.dart';
import 'package:pharmashots/Screen/search_screen.dart';
import 'package:pharmashots/routs.dart';
import 'Screen/get_notification.dart';
import 'Screen/home.dart';

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
      initialRoute: MyRoutes.NotificationPageRout,
      routes: {
        // "/": (context) => OnBoardingPage(),
        MyRoutes.HomeStateRout: (context) => HomeState(),
        MyRoutes.HomePagerouts: (context) => HomePage(),
        MyRoutes.ListPageRout: (context) => ListPage(),
        MyRoutes.ProfilePageRout: (context) => ProfilePage(),
        MyRoutes.SearchScreenRout: (context) => SearchScreen(),
        MyRoutes.AnimalHealthRout: (context) => AnimalHealth(),
        MyRoutes.NotificationPageRout: (context) => NotificationPage(),
      },
    );
  }
}

