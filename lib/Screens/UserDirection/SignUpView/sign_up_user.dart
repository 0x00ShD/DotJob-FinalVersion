import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Components/pick_image_component.dart';
import 'package:untitled1/Screens/UserDirection/SignUpView/success_signup.dart';
import 'package:untitled1/Screens/UserDirection/user_direction.dart';

class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  final firstName = TextEditingController();
  final secondName = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final birthday = TextEditingController();
  final typeOfSex = TextEditingController();

  String dropdownValue = "Male";
  final TextEditingController _dataController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;

  Uint8List? _image;

  void selectImage() async {
    Uint8List? ima = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ima;
    });
  }

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(
        r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return "please enter a valid email";
    }
    return null;
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
                height: 160.h,
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
                    SizedBox(
                      height: 5.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: Form(
                        key: formKey,
                        child: Center(
                          child: Stack(
                            children: [
                              _image != null
                                  ? CircleAvatar(
                                      radius: 50,
                                      backgroundImage: MemoryImage(_image!))
                                  : const CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                          'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg'),
                                    ),
                              Positioned(
                                bottom: -10,
                                left: 55,
                                child: IconButton(
                                  onPressed: selectImage,
                                  icon: const Icon(
                                    Icons.add_a_photo,
                                    size: 40,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
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
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: const Color(0xFF139487)
                                              .withOpacity(.2)),
                                      child: TextFormField(
                                        controller: firstName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "firstname is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 30),
                                            child: Icon(Icons.person),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "First Name",
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
                      height: 5.h,
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
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: const Color(0xFF139487)
                                              .withOpacity(.2)),
                                      child: TextFormField(
                                        controller: secondName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "secondname is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 30),
                                            child: Icon(Icons.person),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Second Name",
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
                      height: 5.h,
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xFF139487)
                                            .withOpacity(.2)),
                                    child: TextFormField(
                                      controller: email,
                                      validator: validateEmail,
                                      decoration: const InputDecoration(
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Icon(Icons.person),
                                        ),
                                        border: InputBorder.none,
                                        hintText: "E-mail",
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
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
                      height: 5.h,
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
                      height: 5.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 700),
                      duration: const Duration(milliseconds: 800),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color(0xFF139487).withOpacity(.2)),
                              child: TextFormField(
                                controller: phoneNumber,
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
                    SizedBox(
                      height: 5.h,
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
                      height: 5.h,
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
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
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
                                              const SuccessSignUp(),
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
                                "Comfirm",
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
