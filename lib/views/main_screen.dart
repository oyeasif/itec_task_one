import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/res/images.dart';
import 'package:itec_task_one/views/auth_screens/login_screen.dart';
import 'package:itec_task_one/views/dashboard_screens/main_dashboard_screen.dart';
import 'package:itec_task_one/views/nft_marlketplace_screens/nft_marketplace_screen.dart';
import 'package:itec_task_one/views/profile_screens/profile_screen.dart';
import 'package:itec_task_one/views/tables_screens/table_screen.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;
  List customIcons = [
    Icons.home,
    Icons.shopping_cart_outlined,
    Icons.bar_chart,
    Icons.person,
    Icons.lock,
  ];

  List customText = [
    'Dashboard',
    'NFT Marketplace',
    'Tables',
    'Profile',
    'Sign in',
  ];

  List<Widget> screens = [
    MainDashboardScreen(),
    NFTMarketPlaceScreen(),
    TableScreen(),
    ProfileScreen(),
    TableScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                  child: Image(image: const AssetImage(MyImages.logo)),
                ),
                SizedBox(height: 40.h,),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: customIcons.length,
                    itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    leading: Icon(
                      customIcons[index],
                      size: 24.sp,
                      color: currentIndex == index ? Color.fromRGBO(67, 24, 255, 1) : Color.fromRGBO(163, 174, 208, 1),
                    ),
                    title: TextStyleWidget(title: customText[index], size: 16.sp, weight: FontWeight.w700, color: currentIndex == index ? Colors.black : Colors.grey,),
                    trailing: currentIndex == index ? Container(
                      height: 30.h,
                      width: 1.w,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(67, 24, 255, 1),
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                    ) : SizedBox(),
                  );
                })
              ],
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: screens[currentIndex],
            ),
          ),
        ],
      ),
    );
  }
}
