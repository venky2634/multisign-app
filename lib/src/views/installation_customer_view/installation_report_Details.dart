import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multisign_app/src/const/app_colors.dart';
import 'package:multisign_app/src/const/app_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multisign_app/src/controllers/home_controller.dart';

class InstallationReportDetails extends StatefulWidget {
  const InstallationReportDetails({super.key});

  @override
  State<InstallationReportDetails> createState() =>
      _InstallationReportDetailsState();
}

class _InstallationReportDetailsState extends State<InstallationReportDetails> {
  Multisign multisign = Get.find<Multisign>();
// String? cameraImages;
  File? photo;
  File? image;
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Installtion Report Details",
            style: primaryFonts.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Details",
                style: primaryFonts.copyWith(
                    color: AppColors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Redmi Mobile Store Room",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Project Name",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Chennai",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "City",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Anna Nagar",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Address",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox20,
              Text(
                "Signage Details",
                style: primaryFonts.copyWith(
                    color: AppColors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              ksizedbox20,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Praksh MP",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Dealer Name",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Redmi Shop",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Store Name",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Redmi Shop",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "City",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Perambur",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Area Name",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "Chennai",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Address",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "+91 98765 43210",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Contact Number",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "HFE42USD94645",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "GST Number",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      hintText: "HOARDINGS",
                      hintStyle: primaryFonts.copyWith(
                          color: AppColors.black.withOpacity(.20),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      labelText: "Signage Type",
                      labelStyle: primaryFonts.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.black))),
                ),
              ),
              ksizedbox15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 180,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, left: 10),
                          labelText: "Width",
                          labelStyle: primaryFonts.copyWith(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide:
                                  BorderSide(width: 1, color: AppColors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.black))),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 180,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, left: 10),
                          labelText: "Hight",
                          labelStyle: primaryFonts.copyWith(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide:
                                  BorderSide(width: 1, color: AppColors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.black))),
                    ),
                  ),
                ],
              ),
              ksizedbox15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 180,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, left: 10),
                          labelText: "Dimensions",
                          labelStyle: primaryFonts.copyWith(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide:
                                  BorderSide(width: 1, color: AppColors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.black))),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 180,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, left: 10),
                          labelText: "Square Feet",
                          labelStyle: primaryFonts.copyWith(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide:
                                  BorderSide(width: 1, color: AppColors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.black))),
                    ),
                  ),
                ],
              ),
              ksizedbox20,
              Text(
                "Capture Spaces & My Space",
                style: primaryFonts.copyWith(
                    color: AppColors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              ksizedbox15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  image == null
                      ? GestureDetector(
                          onTap: () async {
                            var pickedCamera = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              image = File(pickedCamera!.path);
                            });
                          },
                          child: Container(
                            height: 165,
                            width: 185,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.lightGrey),
                                color: AppColors.lightGrey.withOpacity(.20),
                                borderRadius: BorderRadius.circular(6)),
                            child: Image.asset("assets/images/camera.png"),
                          ),
                        )
                      : GestureDetector(
                          onTap: () async {
                            var pickedCamera = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              image = File(pickedCamera!.path);
                            });
                          },
                          child: Container(
                            height: 165,
                            width: 185,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.lightGrey),
                                color: AppColors.lightGrey.withOpacity(.20),
                                borderRadius: BorderRadius.circular(6)),
                            child: Image.file(image!),
                          ),
                        ),
                  photo == null
                      ? GestureDetector(
                          onTap: () async {
                            var pickedFile = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              photo = File(pickedFile!.path);
                              print(photo);
                            });
                          },
                          child: Container(
                            height: 165,
                            width: 185,
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey.withOpacity(.20),
                                borderRadius: BorderRadius.circular(6)),
                            child: Image.asset("assets/images/gallery.png"),
                          ),
                        )
                      : GestureDetector(
                          onTap: () async {
                            var pickedFile = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              photo = File(pickedFile!.path);
                              print(photo);
                            });
                          },
                          child: Container(
                            height: 165,
                            width: 185,
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey.withOpacity(.20),
                                borderRadius: BorderRadius.circular(6)),
                            child: Image.file(
                              photo!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ],
              ),
              ksizedbox20,
              Container(
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Submit",
                  style: primaryFonts.copyWith(
                      color: AppColors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ksizedbox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cancel",
                    style: primaryFonts.copyWith(
                        color: AppColors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}