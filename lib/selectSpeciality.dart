import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medica/core/view_model/auth_view_model.dart';
import 'package:medica/doctor_register.dart';
import 'package:medica/view/widgets/LnRCurve.dart';
import 'package:medica/view/widgets/constance.dart';
import 'package:medica/view/widgets/custom_background.dart';
import 'package:medica/view/widgets/custom_text.dart';
import 'package:medica/view/widgets/custom_text_form_field.dart';
import 'package:medica/view/widgets/my_flutter_app_icons.dart';
import 'package:medica/view/widgets/specialityCurve.dart';
import 'package:medica/view/widgets/speciality_icons_icons.dart';
import 'doctor_getstarted.dart';

// ignore_for_file: prefer_const_constructors, unused_field

class selectSpeciality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        // Get.to(doctor_getstarted());
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(children: [
            myDefaultBackground(),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Select a speciality',
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(
                  left: size.width * 0.08,
                  right: size.width * 0.08,
                  // top: size.height * 0.05,
                ),
                // color: Colors.green,
                height: size.height * 0.87,

                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * 0.79,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.andrology,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Andrology and Male Infertility',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Get.to(() => selectSpeciality());
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  Icon(
                                    SpecialityIcons.allergy,
                                    size: 28,
                                    color: Color(0xffF95DDE),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.027,
                                  ),
                                  CustomText(
                                    text: 'Allergy and Immunology',
                                    textStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff3E1E96),
                              indent: size.width * 0.02,
                              endIndent: size.width * 0.02,
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(
                      //   top: size.height * 0.02,
                      //   right: size.width * 0.1,
                      //   left: size.width * 0.1,
                      // ),
                      width: double.infinity,
                      height: size.height * 0.035,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                    )
                  ],
                ),
              )
            ]),
          ])),
    );
  }
}
