import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Components/pick_image_component.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/profile_screen_company.dart';
import 'package:untitled1/Screens/UserDirection/Profile/MyAccount/Component/inputFile.dart';
import 'package:untitled1/Screens/UserDirection/Profile/profile_screen.dart';

class AccountPageCompany extends StatefulWidget {
  const AccountPageCompany({super.key});

  @override
  State<AccountPageCompany> createState() => _AccountPageCompanyState();
}

class _AccountPageCompanyState extends State<AccountPageCompany> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List? ima = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ima;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Edit Profile",
            style: TextStyle(fontFamily: 'Arimo'),
          ),
        ),
        backgroundColor: const Color(0xFF139487),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sizer(
                builder: (context, orientation, deviceType) =>
                    const ProfileScreenCompany(),
              ),
            ),
          );
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 5.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: Center(
                        child: Stack(
                          children: [
                            _image != null
                                ? CircleAvatar(
                                    radius: 100,
                                    backgroundImage: MemoryImage(_image!))
                                : const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(
                                        'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg'),
                                  ),
                            Positioned(
                              bottom: -10,
                              left: 50,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Company Name")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Company Email")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child:
                                inputFile(label: "Password", obscureText: true),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Business Phone Number")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Business Address")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Year of establishemnt")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Company Size")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "brife decription of the company",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Satoshi',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      hoverColor: Color(0xFF139487),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 60, horizontal: 20),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide: BorderSide(
                                            color: Color(0xFF139487)),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black))),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 3, left: 3),
                              decoration: BoxDecoration(
                                color: const Color(0xFF139487),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sizer(
                                        builder: (context, orientation,
                                                deviceType) =>
                                            const ProfileScreen(),
                                      ),
                                    ),
                                  );
                                },
                                color: const Color(0xFF139487),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Text(
                                  "Update",
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
