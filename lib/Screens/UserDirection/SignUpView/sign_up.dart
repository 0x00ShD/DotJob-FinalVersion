import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Components/pick_image_component.dart';
import 'package:untitled1/Screens/UserDirection/SignUpView/sign_up_2.dart';
import 'package:untitled1/Screens/UserDirection/user_direction.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final phonenumber = TextEditingController();
  final fullname = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final email = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;

  Uint8List? _image;

  void selectImage() async {
    Uint8List? ima = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ima;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sizer(
              builder: (context, orientation, deviceType) =>
                  const UserDirection(),
            ),
          ),
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: 120.h,
                decoration: const BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: Center(
                          child: Image.asset('assets/Images/Logo.png',
                              height: 10.h)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 900),
                          child: Center(
                            child: Text(
                              'Hi!',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Center(
                            child: Text(
                              'Create a new account',
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10.h,
                        ),
                        FadeInLeft(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Expanded(
                            child: SizedBox(
                              width: 60,
                              height: 50,
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: const Border(
                                      bottom:
                                          BorderSide(color: Color(0xFF139487)),
                                      top: BorderSide(color: Color(0xFF139487)),
                                      left:
                                          BorderSide(color: Color(0xFF139487)),
                                      right:
                                          BorderSide(color: Color(0xFF139487)),
                                    )),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => Sizer(
                                    //       builder: (context, orientation, deviceType) =>
                                    //           const VerficationEmail(),
                                    //     ),
                                    //   ),
                                    // );
                                  },
                                  color: Colors.black,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                      fontFamily: "Arimo",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xFF139487),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        FadeInLeft(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Expanded(
                            child: SizedBox(
                              width: 60,
                              height: 50,
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: const Border(
                                      bottom:
                                          BorderSide(color: Color(0xFF139487)),
                                      top: BorderSide(color: Color(0xFF139487)),
                                      left:
                                          BorderSide(color: Color(0xFF139487)),
                                      right:
                                          BorderSide(color: Color(0xFF139487)),
                                    )),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Sizer(
                                          builder: (context, orientation,
                                                  deviceType) =>
                                              const NextSignUp(),
                                        ),
                                      ),
                                    );
                                  },
                                  color: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Text(
                                    "2",
                                    style: TextStyle(
                                      fontFamily: "Arimo",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xFF139487),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    FadeInDown(
                        delay: const Duration(milliseconds: 900),
                        duration: const Duration(milliseconds: 1000),
                        child: Center(
                          child: Stack(
                            children: [
                              _image != null
                                  ? CircleAvatar(
                                      radius: 40,
                                      backgroundImage: MemoryImage(_image!))
                                  : const CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                          'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg'),
                                    ),
                              Positioned(
                                bottom: -10,
                                left: 43,
                                child: IconButton(
                                  onPressed: selectImage,
                                  icon: const Icon(Icons.add_a_photo),
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Row(
                        children: [
                          Expanded(
                            child: FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 800),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFF139487)
                                              .withOpacity(.2)),
                                      child: TextFormField(
                                        controller: fullname,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "fullname is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Icon(Icons.person),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Full Name",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Row(
                        children: [
                          Expanded(
                            child: FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 800),
                              child: Form(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFF139487)
                                              .withOpacity(.2)),
                                      child: TextFormField(
                                        controller: email,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "email is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Icon(Icons.person),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "E-mail",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF139487).withOpacity(.2)),
                        child: TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            }
                            return null;
                          },
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                              icon: const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Icon(Icons.lock),
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    //In here we will create a click to show and hide the password a toggle button
                                    setState(() {
                                      //toggle button
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF139487).withOpacity(.2)),
                        child: TextFormField(
                          controller: confirmPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            } else if (password.text != confirmPassword.text) {
                              return "Passwords don't match";
                            }
                            return null;
                          },
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                              icon: const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Icon(Icons.lock),
                              ),
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    //In here we will create a click to show and hide the password a toggle button
                                    setState(() {
                                      //toggle button
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    FadeInLeft(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Expanded(
                        child: SizedBox(
                          width: 200,
                          child: Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: const Border(
                                  bottom: BorderSide(color: Color(0xFF139487)),
                                  top: BorderSide(color: Color(0xFF139487)),
                                  left: BorderSide(color: Color(0xFF139487)),
                                  right: BorderSide(color: Color(0xFF139487)),
                                )),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sizer(
                                      builder:
                                          (context, orientation, deviceType) =>
                                              const NextSignUp(),
                                    ),
                                  ),
                                );
                              },
                              color: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "Next",
                                style: TextStyle(
                                  fontFamily: "Arimo",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xFF139487),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have account ?!',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sizer(
                                      builder:
                                          (context, orientation, deviceType) =>
                                              const LoginUSerPage(),
                                    ),
                                  ),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(0xFF139487),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
