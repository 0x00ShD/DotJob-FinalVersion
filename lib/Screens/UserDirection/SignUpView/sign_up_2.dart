import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Screens/UserDirection/SignUpView/sign_up.dart';

class NextSignUp extends StatefulWidget {
  const NextSignUp({super.key});

  @override
  State<NextSignUp> createState() => _NextSignUpState();
}

class _NextSignUpState extends State<NextSignUp> {
  final phonenumber = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final TextEditingController _dataController = TextEditingController();

  String dropdownValue = "Male";

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sizer(
              builder: (context, orientation, deviceType) => const SignUp(),
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
                height: 110.h,
                decoration: const BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: Center(
                          child: Image.asset('assets/Images/Logo.png',
                              height: 10.h)),
                    ),
                    SizedBox(
                      height: 1.h,
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
                        SizedBox(
                          height: 1.h,
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
                    SizedBox(
                      height: 2.h,
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
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Sizer(
                                          builder: (context, orientation,
                                                  deviceType) =>
                                              const SignUp(),
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
                                  onPressed: () {},
                                  color: Colors.black,
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
                    SizedBox(
                      height: 2.h,
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
                                        controller: phonenumber,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "phonenumber is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Icon(Icons.person),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Phone Number",
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
                      child: Container(
                        height: 60,
                        width: 310,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF139487).withOpacity(.2)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: _dataController,
                            decoration: InputDecoration(
                              fillColor:
                                  const Color(0xFF139487).withOpacity(0.5),
                              labelText: 'Birthday',
                              labelStyle: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                              ),
                              prefixIcon: const Icon(Icons.calendar_today),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xFF139487).withOpacity(0.0),
                                ),
                              ),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectData();
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Container(
                          height: 60,
                          width: 310,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF139487).withOpacity(.2)),
                          child: DropdownButtonHideUnderline(
                            child: Center(
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: DropdownButton<String>(
                                  iconEnabledColor: Colors.black,
                                  padding: const EdgeInsets.only(right: 220),
                                  icon: const Icon(Icons.arrow_back_ios),
                                  value: dropdownValue,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: 'Male',
                                      child: Text('Male',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: ' Female',
                                      child: Text(' Female',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Container(
                        padding: const EdgeInsets.only(right: 160),
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    'Terms of use',
                                    style: TextStyle(
                                      color: Color(0xFF139487),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    'Help center',
                                    style: TextStyle(
                                      color: Color(0xFF139487),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
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
                                "Confirm",
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

  Future<void> _selectData() async {
    DateTime? picked = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dataController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
