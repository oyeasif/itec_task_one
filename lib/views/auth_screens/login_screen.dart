import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/bloc/login_bloc/login_bloc.dart';
import 'package:itec_task_one/res/images.dart';
import 'package:itec_task_one/views/main_screen.dart';
import 'package:itec_task_one/widgets/button_widget.dart';
import 'package:itec_task_one/widgets/image_button_widget.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late LoginBloc _loginBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 250.w),
                child: ListView(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_sharp,
                              size: 14.sp,
                              color: Color.fromRGBO(163, 174, 208, 1)),
                          SizedBox(
                            width: 1.w,
                          ),
                          TextStyleWidget(
                            title: 'Back to Dashboard',
                            size: 14.sp,
                            weight: FontWeight.w500,
                            color: const Color.fromRGBO(163, 174, 208, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100.h,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleWidget(
                          title: 'Sign In',
                          size: 36.sp,
                          weight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextStyleWidget(
                          title: 'Enter your email and password to sign in',
                          size: 16.sp,
                          color: Colors.grey,
                          weight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        ImageButtonWidget(
                          loading: false,
                          title: 'Sign in with Google',
                          onPress: () {},
                          buttonColor: Colors.grey.withOpacity(0.1),
                          textColor: Colors.black,
                          image: MyImages.google,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Divider(),
                              ),
                            ),
                            TextStyleWidget(
                              title: 'Or',
                              size: 14.sp,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Divider(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextStyleWidget(
                          title: 'Email*',
                          size: 14.sp,
                          weight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        BlocBuilder<LoginBloc, LoginState>(
                            buildWhen: (current , previous) => current.email != previous.email,
                            builder: (context, state){
                          return SizedBox(
                            height: 50.h,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                              onChanged: (value) {
                                context.read<LoginBloc>().add(EmailChanged(email: value));
                                print(value.toString());
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
                                hintText: 'mail@simple.com',
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                    )),
                              ),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextStyleWidget(
                          title: 'Password*',
                          size: 14.sp,
                          weight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        BlocBuilder<LoginBloc, LoginState>(
                            buildWhen: (current, previous) => current.password != previous.password,
                            builder: (context, state){
                          return SizedBox(
                            height: 50.h,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                              onChanged: (value){
                                context.read<LoginBloc>().add(PasswordChanged(password: value));
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
                                hintText: 'Min 8 characters',
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                    )),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_outlined, size: 18.sp,),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: Color(0xFF4318ff),
                                ),
                                TextStyleWidget(
                                  title: 'Keep me logged in',
                                  size: 14.sp,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                            TextStyleWidget(
                              title: 'Forget Password?',
                              size: 14.sp,
                              color: Color(0xFF4318ff),
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        BlocListener<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if(state.loginStatus == LoginStatus.loading){
                              ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content: Center(child: Text('submitting'))));
                            }
                            if(state.loginStatus == LoginStatus.success){
                              ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content: Center(child: Text('Login Successfuly')), backgroundColor: Colors.green,));
                            }
                            if(state.loginStatus == LoginStatus.failure){
                              ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content: Center(child: Text('Login Failed')), backgroundColor: Colors.red,));
                            }
                          },
                          child: BlocBuilder<LoginBloc, LoginState>(
                              buildWhen: (current , previous) => false,
                              builder: (context, state){
                                return ButtonWidget(
                                  loading: false,
                                  title: 'Sign in',
                                  onPress: () {
                                    context.read<LoginBloc>().add(SubmitButton());
                                  },
                                  buttonColor: Color(0xFF4318ff),
                                  textColor: Colors.white,
                                );
                              }),
                        ),
                        Row(
                          children: [
                            TextStyleWidget(
                              title: 'Not registered yet?',
                              size: 14.sp,
                              weight: FontWeight.w400,
                            ),
                            TextButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: TextStyleWidget(
                                  title: 'Create an Account',
                                  size: 14.sp,
                                  color: Color(0xFF4318ff),
                                  weight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 150.h,),
                    TextStyleWidget(
                      title:
                      '© 2022 Horizon UI. All Rights Reserved. Made with love by Simmmple!',
                      size: 14.sp,
                      weight: FontWeight.w500,
                      color: Color.fromRGBO(163, 174, 208, 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff8cafef),
                      Color(0xFF4318ff),
                    ], begin: Alignment.topRight),
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(150.r))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Image(image: AssetImage(MyImages.logo), height: 145.h, width: 746.w,),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 20.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(27.r),
                        ),
                        child: Column(
                          children: [
                            TextStyleWidget(
                              title: 'Learn more about Horizon UI on',
                              size: 17.sp,
                              weight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            TextStyleWidget(
                              title: 'horizon-ui.com',
                              size: 30.sp,
                              weight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: TextStyleWidget(
                              title: 'MarketPlace',
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: TextStyleWidget(
                              title: 'License',
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: TextStyleWidget(
                              title: 'Terms of Use',
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: TextStyleWidget(
                              title: 'Blog',
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
