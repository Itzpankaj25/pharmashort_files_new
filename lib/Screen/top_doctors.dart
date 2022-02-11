import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmashots/Constants/color_resource.dart';
import 'package:pharmashots/Constants/fonts.dart';


class TopDoctors extends StatefulWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  late CarouselSlider carouselSlider;
  int _current = 0;
  // List imgList = [
  //   'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  // ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final List _Img = [
      'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 25,178,255),
                Color.fromARGB(255, 21,236,255)
              ],
            )
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 23,),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black54,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset('assets/images/icons svg/Icon-feather-share.svg',
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  'assets/images/icons svg/Icon ionic-ios-bookmark.svg',
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 23.0),
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black54,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/icons svg/reload.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text('Top Doctor',style:FormaDJRDisplayBold.copyWith(
                        color: ColorResources.WHITE,
                        fontSize: 20
                    ),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // CarouselSlider(
                      //   height: 292.0,
                      //   initialPage: 0,
                      //   enlargeCenterPage: true,
                      //   autoPlay: true,
                      //   reverse: false,
                      //   enableInfiniteScroll: true,
                      //   autoPlayInterval: Duration(seconds: 2),
                      //   autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      //   pauseAutoPlayOnTouch: Duration(seconds: 10),
                      //   scrollDirection: Axis.horizontal,
                      //   onPageChanged: (index) {
                      //     setState(() {
                      //       _current = index;
                      //     });
                      //   },
                      //   items: imgList.map((imgUrl) {
                      //     return Builder(
                      //       builder: (BuildContext context) {
                      //         return Container(
                      //           width: MediaQuery.of(context).size.width,
                      //           margin: EdgeInsets.symmetric(horizontal: 10.0),
                      //           decoration: BoxDecoration(
                      //               color: Colors.green,
                      //               borderRadius: BorderRadius.circular(25)
                      //           ),
                      //           child: Image.network(
                      //             imgUrl,
                      //             fit: BoxFit.fill,
                      //           ),
                      //         );
                      //       },
                      //     );
                      //   }).toList(),
                      // ),
                      Center(
                        child: CarouselSlider(
                          height: 292,
                          items: _Img.map((i){
                            return Builder(builder: (BuildContext context){
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset(i),
                              );
                            });
                          }).toList(),
                          enlargeCenterPage: true,
                          viewportFraction: .58,
                          initialPage: 0,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(_Img, (index, url) {
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index ? Colors.redAccent : Colors.green,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Boehringer Ingelheim Animal Health Establishes Pawru for its PetPro Portfolio',style:FormaDJRDisplayBold.copyWith(
                        color: ColorResources.WHITE,
                        fontSize: 16,

                    ),textAlign: TextAlign.center,),
                  ),
                ],
              ),
            );
          }
            ),
      ),
    );
        }

  }


