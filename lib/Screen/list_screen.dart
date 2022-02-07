import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pharmashots/Constants/color_resource.dart';
import 'package:pharmashots/Constants/components.dart';
import 'package:pharmashots/Screen/bottom_bar_screen.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           for (var i = 0; i < 10; i++)
            Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                //  dismissible: DismissiblePane(onDismissed: () {}),
                  children: const [
                    SlidableAction(
                      onPressed: null,
                     // backgroundColor: Colors.white,
                      foregroundColor: ColorResources.Orange,
                      icon: Icons.delete_sharp,
                    ),
                  ],
                ),
              child: listwidget(),
            )
          ],
        ),
      ),
    ),
      floatingActionButton: FlotingAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
        );
  }

}




