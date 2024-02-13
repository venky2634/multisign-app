import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multisign_app/src/const/app_colors.dart';
import 'package:multisign_app/src/const/app_constant.dart';
import 'package:multisign_app/src/const/app_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multisign_app/src/const/bottom_navi_bar.dart';
import 'package:multisign_app/src/controllers/home_controller.dart';

class RecceReportDetails extends StatefulWidget {
  final String id;
  const RecceReportDetails({
    super.key,
    required this.id,
  });

  @override
  State<RecceReportDetails> createState() => _RecceReportDetailsState();
}

class _RecceReportDetailsState extends State<RecceReportDetails> {
  final _focusNode = FocusNode();
  final TextEditingController job_cardContoller = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController squrefitController = TextEditingController();
  final TextEditingController dimensionController = TextEditingController();
  final TextEditingController signage_typeController = TextEditingController();
  final TextEditingController signage_detailsController =
      TextEditingController();
  final TextEditingController client_idController = TextEditingController();
  HomeController controller = Get.find<HomeController>();
// String? cameraImages;
  final _ImagePath = ''.obs;
  String? get ImagePath => _ImagePath.value;
  File? photo;
  File? image;
  ImagePicker imagePicker = ImagePicker();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDefault();
  }

  setDefault() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await controller.getReceedetails(id: widget.id);
      if (controller.getreceedetailsData!.receeVerifications.isNotEmpty) {
        job_cardContoller.text =
            controller.getreceedetailsData!.jobcard.toString();

        widthController.text =
            controller.getreceedetailsData!.receeVerifications.last.withColumn;
        heightController.text = controller
            .getreceedetailsData!.receeVerifications.last.heightColumn;
        squrefitController.text =
            controller.getreceedetailsData!.receeVerifications.last.squareFit;
        dimensionController.text =
            controller.getreceedetailsData!.receeVerifications.last.dimension;
        signage_typeController.text =
            controller.getreceedetailsData!.receeVerifications.last.signageType;
        signage_detailsController.text = controller
            .getreceedetailsData!.receeVerifications.last.signageDetails;
      }

      controller.setImagePathEmpty();
      controller.setImagesEmpty();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recce Report Details",
            style: primaryFonts.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: GetBuilder<HomeController>(builder: (context) {
            return controller.isLoadingdatails.isTrue
                ? Center(
                    child: CircularProgressIndicator(
                      color: AppColors.green,
                    ),
                  )
                : Form(
                    key: _formKey,
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: TextFormField(
                            //obscureText: false,
                            //       autofocus: true,
                            readOnly: true,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 10),
                                hintText:
                                    controller.getreceedetailsData!.clientName,
                                hintStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black))),
                          ),
                        ),
                        ksizedbox15,
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            focusNode: _focusNode, // Assign the FocusNode
                            //  autofocus: false, // Disable autofocus
                            readOnly:
                                true, // Readonly will ensure the text field doesn't lose focus

                            onTap: () =>
                                _focusNode.requestFocus(), // Focus when tapped
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5, left: 10),
                              hintText: controller.getreceedetailsData!.city,
                              hintStyle: primaryFonts.copyWith(
                                color: AppColors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              //   labelText: 'fds',
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.black),
                              ),
                            ),
                          ),
                        ),
                        ksizedbox15,
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: TextFormField(
                            autofocus: false,
                            readOnly: true,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 10),
                                hintText:
                                    controller.getreceedetailsData!.address,
                                hintStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black))),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: TextFormField(
                            autofocus: true,
                            readOnly: true,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 10),
                                hintText: controller.getreceedetailsData!.state,
                                hintStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                //   labelText: "ID",
                                labelStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black))),
                          ),
                        ),
                        ksizedbox15,
                        // Container(
                        //   height: 45,
                        //   decoration:
                        //       BoxDecoration(borderRadius: BorderRadius.circular(4)),
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //         contentPadding: EdgeInsets.only(top: 5, left: 10),
                        //         hintText: "Redmi Shop",
                        //         hintStyle: primaryFonts.copyWith(
                        //             color: AppColors.black.withOpacity(.20),
                        //             fontSize: 13,
                        //             fontWeight: FontWeight.w600),
                        //         labelText: "Store Name",
                        //         labelStyle: primaryFonts.copyWith(
                        //             color: AppColors.black,
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.w600),
                        //         border: InputBorder.none,
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide:
                        //                 BorderSide(width: 1, color: AppColors.black)),
                        //         focusedBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide:
                        //                 BorderSide(width: 1, color: AppColors.black))),
                        //   ),
                        // ),
                        // ksizedbox15,
                        // Container(
                        //   height: 45,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(4)),
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //         contentPadding: EdgeInsets.only(top: 5, left: 10),
                        //         hintText: "Redmi Shop",
                        //         hintStyle: primaryFonts.copyWith(
                        //             color: AppColors.black.withOpacity(.20),
                        //             fontSize: 13,
                        //             fontWeight: FontWeight.w600),
                        //         labelText: "City",
                        //         labelStyle: primaryFonts.copyWith(
                        //             color: AppColors.black,
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.w600),
                        //         border: InputBorder.none,
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide: BorderSide(
                        //                 width: 1, color: AppColors.black)),
                        //         focusedBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide: BorderSide(
                        //                 width: 1, color: AppColors.black))),
                        //   ),
                        // ),
                        // ksizedbox15,
                        // Container(
                        //   height: 45,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(4)),
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //         contentPadding: EdgeInsets.only(top: 5, left: 10),
                        //         hintText: "Perambur",
                        //         hintStyle: primaryFonts.copyWith(
                        //             color: AppColors.black.withOpacity(.20),
                        //             fontSize: 13,
                        //             fontWeight: FontWeight.w600),
                        //         labelText: "Area Name",
                        //         labelStyle: primaryFonts.copyWith(
                        //             color: AppColors.black,
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.w600),
                        //         border: InputBorder.none,
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide: BorderSide(
                        //                 width: 1, color: AppColors.black)),
                        //         focusedBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(4),
                        //             borderSide: BorderSide(
                        //                 width: 1, color: AppColors.black))),
                        //   ),
                        // ),
                        ksizedbox15,
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: TextFormField(
                            readOnly: true,
                            controller: job_cardContoller,
                            //   keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 10),
                                hintText:
                                    controller.getreceedetailsData?.jobcard,
                                hintStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                //  labelText: 'Job Card',
                                labelStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black))),
                          ),
                        ),
                        ksizedbox15,
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: TextFormField(
                            readOnly: true,
                            keyboardType: TextInputType.number,
                            controller: client_idController,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 10),
                                hintText:
                                    controller.getreceedetailsData?.recceId,
                                hintStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                labelStyle: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.black))),
                          ),
                        ),
                        ksizedbox15,
                        //  controller.getreceedetailsData!.receeVerifications.isEmpty?Container():
                        Column(
                          children: [
                            Container(
                              height: 55.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                //  keyboardType: TextInputType.number,
                                controller: signage_detailsController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Signage Details';
                                  }
                                  // You can add more validation rules here if needed
                                  return null; // Return null if the input is valid
                                },
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 5, left: 10),
                                    hintText: "HFE42USD94645",
                                    hintStyle: primaryFonts.copyWith(
                                        color: AppColors.black.withOpacity(.20),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                    labelText: 'Signage Details',
                                    labelStyle: primaryFonts.copyWith(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: AppColors.black,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 1, color: AppColors.black)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 1, color: AppColors.black))),
                              ),
                            ),
                            //    ksizedbox10,
                            Container(
                              height: 55.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: signage_typeController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Signage Type';
                                  }
                                  // You can add more validation rules here if needed
                                  return null; // Return null if the input is valid
                                },
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 5, left: 10),
                                    hintText: "HOARDINGS",
                                    hintStyle: primaryFonts.copyWith(
                                        color: AppColors.black.withOpacity(.20),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                    labelText: 'Signage Type',
                                    labelStyle: primaryFonts.copyWith(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: AppColors.black,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 1, color: AppColors.black)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 1, color: AppColors.black))),
                              ),
                            ),
                            ksizedbox5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    height: 55.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4)),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      controller: widthController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Width';
                                        }
                                        // You can add more validation rules here if needed
                                        return null; // Return null if the input is valid
                                      },
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 5, left: 10),
                                          labelText: 'Width',
                                          labelStyle: primaryFonts.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black))),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 55.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4)),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      controller: heightController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Height';
                                        }
                                        // You can add more validation rules here if needed
                                        return null; // Return null if the input is valid
                                      },
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 5, left: 10),
                                          labelText: 'Height',
                                          labelStyle: primaryFonts.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ksizedbox5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    height: 55.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4)),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      controller: dimensionController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Dimensions';
                                        }
                                        // You can add more validation rules here if needed
                                        return null; // Return null if the input is valid
                                      },
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 5, left: 10),
                                          labelText: 'Dimensions',
                                          labelStyle: primaryFonts.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.black))),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 55.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      controller: squrefitController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Square Feet';
                                        }
                                        // You can add more validation rules here if needed
                                        return null; // Return null if the input is valid
                                      },
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 5, left: 10),
                                        labelText: 'Square Feet',
                                        labelStyle: primaryFonts.copyWith(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: AppColors.black,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: AppColors.black,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                     controller
                                        .getreceedetailsData?.isReceeVerrified =="1"?      Container(
                          height: 200,
                         
                          child: ListView.builder(
                              itemCount: controller
                                        .getreceedetailsData
                                        ?.receeVerifications!.last.beforeImages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index2) {
                                return Card(
                                  child: Container(
                                   width: 200,
                                    child: Image.network(controller
                                        .getreceedetailsData
                                        ?.receeVerifications.last
                                        .beforeImages[index2]),
                                  ),
                                );
                              }),
                        ):
   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () async {
                                  controller.CameraImage(
                                      imageSource: ImageSource.camera);
                                  controller.update();
                                },
                                child:
                                    //  Obx(
                                    //   () => controller.pickedcamerapath == ""
                                    //       ?
                                    Container(
                                  height: 115.h,
                                  decoration: BoxDecoration(
                                      color:
                                          AppColors.lightGrey.withOpacity(.20),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Image.asset(
                                    "assets/images/camera.png",
                                    height: 165,
                                    width: 185,
                                  ),
                                )
                                // : Container(
                                //     width: 200,
                                //     height: 115.h,
                                //     decoration: BoxDecoration(
                                //         image: DecorationImage(
                                //             image: FileImage(File(
                                //           controller.pickedcamerapath!,
                                //         ))),
                                //         border: Border.all(
                                //             width: 1,
                                //             color: AppColors.lightGrey),
                                //         color: AppColors.lightGrey
                                //             .withOpacity(.20),
                                //         borderRadius:
                                //             BorderRadius.circular(6)),
                                //   ),
                                //    ),
                                ),
                            GestureDetector(
                                onTap: () async {
                                  controller.pickImage(
                                      imageSource: ImageSource.gallery);

                                  controller.update();
                                },
                                child:
                                    //Obx(
                                    //() => controller.pickedImagePath == ""
                                    //?
                                    Container(
                                  height: 120.h,
                                  decoration: BoxDecoration(
                                      color:
                                          AppColors.lightGrey.withOpacity(.20),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Image.asset(
                                    "assets/images/gallery.png",
                                    height: 165,
                                    width: 185,
                                  ),
                                )
                                // : Container(
                                //     height: 120.h,
                                //     decoration: BoxDecoration(
                                //         // image: DecorationImage(
                                //         //     image: FileImage(File(
                                //         //   controller.pickedImagePath!,
                                //         // )
                                //         // )),
                                //         color: AppColors.lightGrey
                                //             .withOpacity(.20),
                                //         borderRadius:
                                //             BorderRadius.circular(6)),
                                //     child: Image.asset(
                                //       "assets/images/gallery.png",
                                //       height: 165,
                                //       width: 185,
                                //     ),
                                //   ),
                                //  ),
                                )
                          ],
                        ),
                        ksizedbox10,





                        Container(
                          height: 100,
                          child: ListView.builder(
                            itemCount: controller.pickedImagePathList!.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.file(
                                              File(controller
                                                  .pickedImagePathList[index]),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: CircleAvatar(
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: AppColors.red,
                                          ),
                                          onPressed: () {
                                            // Add your delete logic here
                                            // For example, you can remove the image path from the list
                                            setState(() {
                                              controller.pickedImagePathList
                                                  .removeAt(index);
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        ksizedbox20, controller
                                        .getreceedetailsData?.isReceeVerrified =="1"? Container(
                              alignment: Alignment.center,
                              height: 45,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(8)),
                              child:Text(
                                      "Completed",
                                      style: primaryFonts.copyWith(
                                          color: AppColors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600),
                                    ),
                            ):
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // Validate media (picked images)
                              if (controller.pickedImagePathList != null &&
                                  controller.pickedImagePathList!.isNotEmpty) {
                                controller.verifyRecee(
                                  job_card:
                                      controller.getreceedetailsData!.jobcard,
                                  width: widthController.text,
                                  height: heightController.text,
                                  squrefit: squrefitController.text,
                                  dimension: dimensionController.text,
                                  signage_type: signage_typeController.text,
                                  signage_details:
                                      signage_detailsController.text,
                                  client_id: controller.getreceedetailsData!.id
                                      .toString(),
                                  media: controller.pickedImagePathList!,
                                );
                              } else {
                                AppConstant.showSnackbar(
                                  headText: "Upload Failed",
                                  content: "Please pick at least one image.",
                                  position: SnackPosition.BOTTOM,
                                );
                              }
                            }
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              height: 45,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(8)),
                              child: controller.isLoadingverification.isTrue
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.white,
                                      ),
                                    )
                                  : Text(
                                      "Submit",
                                      style: primaryFonts.copyWith(
                                          color: AppColors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600),
                                    ),
                            ),
                          ),
                        ),
                        ksizedbox20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(BottomNaviBar(
                                  index: 1,
                                ));
                              },
                              child: Text(
                                "Cancel",
                                style: primaryFonts.copyWith(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                        ksizedbox20
                      ],
                    ),
                  );
          }),
        ),
      ),
    );
  }
}
