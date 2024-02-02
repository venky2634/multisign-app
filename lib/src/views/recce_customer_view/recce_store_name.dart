import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multisign_app/src/const/app_colors.dart';
import 'package:multisign_app/src/const/app_fonts.dart';
import 'package:multisign_app/src/controllers/home_controller.dart';
import 'package:multisign_app/src/views/recce_customer_view/recce_report_details.dart';

class RecceStoreName extends StatefulWidget {
   RecceStoreName({super.key, required int id, });

  @override
  State<RecceStoreName> createState() => _RecceStoreNameState();
}

class _RecceStoreNameState extends State<RecceStoreName> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   controller. getReceedetails(id:1);
  }
 // final int? id;
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recce Store Name",
            style: primaryFonts.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.black)),
      ),
      body: Center(child: Image.asset('assets/icons/fi_6598519.png'))
      // Padding(
      //   padding: const EdgeInsets.only(left: 15, right: 15),
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 45,
      //         decoration: BoxDecoration(
      //             color: AppColors.black.withOpacity(.02),
      //             borderRadius: BorderRadius.circular(6)),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //               contentPadding: EdgeInsets.only(top: 5, left: 10),
      //               hintText: "Search Store and Branch",
      //               hintStyle: primaryFonts.copyWith(
      //                   color: AppColors.black.withOpacity(.50)),
      //               border: InputBorder.none,
      //               enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                   borderSide: BorderSide(
      //                       width: 1, color: AppColors.black.withOpacity(.20))),
      //               focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                   borderSide:
      //                       BorderSide(width: 1, color: AppColors.grey))),
      //         ),
      //       ),
      //       ksizedbox30,
      //       Text(
      //         "Project Name Details",
      //         style: primaryFonts.copyWith(
      //             color: AppColors.black,
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600),
      //       ),
      //       ksizedbox10,
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               controller.getreceedetailsData!.clientName,
      //               style: primaryFonts.copyWith(
      //                   color: AppColors.black,
      //                   fontSize: 12,
      //                   fontWeight: FontWeight.w400),
      //             ),
      //             Container(
      //               height: 22,
      //               width: 22,
      //               decoration: BoxDecoration(
      //                   color: AppColors.pink, shape: BoxShape.circle),
      //             ),
      //           ],
      //         ),
      //       ),
      //       ksizedbox20,
      //       Container(
      //         padding: EdgeInsets.only(left: 10, top: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Text(
      //           "Vivo x2",
      //           style: primaryFonts.copyWith(
      //               color: AppColors.black,
      //               fontSize: 12,
      //               fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       ksizedbox20,
      //       Container(
      //         padding: EdgeInsets.only(left: 10, top: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Text(
      //           "Vivo Mobiles",
      //           style: primaryFonts.copyWith(
      //               color: AppColors.black,
      //               fontSize: 12,
      //               fontWeight: FontWeight.w400),
      //         ),
      //       ),
      //       ksizedbox30,
      //       Text(
      //         "Project Name Details",
      //         style: primaryFonts.copyWith(
      //             color: AppColors.black,
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600),
      //       ),
      //       ksizedbox10,
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               "Raja Vivo Store",
      //               style: primaryFonts.copyWith(
      //                   color: AppColors.black,
      //                   fontSize: 12,
      //                   fontWeight: FontWeight.w400),
      //             ),
      //             IconButton(
      //                 onPressed: () {
      //                   Get.to(RecceReportDetails());
      //                 },
      //                 icon: Icon(Icons.arrow_forward)),
      //           ],
      //         ),
      //       ),
      //       ksizedbox20,
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               "Pavi Vivo Mobile",
      //               style: primaryFonts.copyWith(
      //                   color: AppColors.black,
      //                   fontSize: 12,
      //                   fontWeight: FontWeight.w400),
      //             ),
      //             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
      //           ],
      //         ),
      //       ),
      //       ksizedbox20,
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: AppColors.lightGrey.withOpacity(.30),
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               "Nivi Mobile Stores",
      //               style: primaryFonts.copyWith(
      //                   color: AppColors.black,
      //                   fontSize: 12,
      //                   fontWeight: FontWeight.w400),
      //             ),
      //             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
