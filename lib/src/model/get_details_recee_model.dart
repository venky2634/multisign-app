// To parse this JSON data, do
//
//     final getIReceeDetailsModel = getIReceeDetailsModelFromJson(jsonString);

import 'dart:convert';

GetIReceeDetailsModel getIReceeDetailsModelFromJson(String str) => GetIReceeDetailsModel.fromJson(json.decode(str));

String getIReceeDetailsModelToJson(GetIReceeDetailsModel data) => json.encode(data.toJson());

class GetIReceeDetailsModel {
    bool status;
    GetReceeDetilsList data;

    GetIReceeDetailsModel({
        required this.status,
        required this.data,
    });

    factory GetIReceeDetailsModel.fromJson(Map<String, dynamic> json) => GetIReceeDetailsModel(
        status: json["status"],
        data: GetReceeDetilsList.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class GetReceeDetilsList {
    int id;
    String jobcard;
    String clientName;
    String scopeOfWork;
    String address;
    String city;
    String state;
    String gstNumber;
    String estimateNumber;
    String poNumber;
    DateTime poDate;
    DateTime targetCompletionDate;
    String particular;
    String qty;
    String rate;
    String value;
    String marketterId;
    String recceId;
    String production;
    String designing;
    String data;
    String installerId;
    String installerStatus;
    String status;
    String isReceeVerrified;
    DateTime createdAt;
    DateTime updatedAt;

    GetReceeDetilsList({
        required this.id,
        required this.jobcard,
        required this.clientName,
        required this.scopeOfWork,
        required this.address,
        required this.city,
        required this.state,
        required this.gstNumber,
        required this.estimateNumber,
        required this.poNumber,
        required this.poDate,
        required this.targetCompletionDate,
        required this.particular,
        required this.qty,
        required this.rate,
        required this.value,
        required this.marketterId,
        required this.recceId,
        required this.production,
        required this.designing,
        required this.data,
        required this.installerId,
        required this.installerStatus,
        required this.status,
        required this.isReceeVerrified,
        required this.createdAt,
        required this.updatedAt,
    });

    factory GetReceeDetilsList.fromJson(Map<String, dynamic> json) => GetReceeDetilsList(
        id: json["id"],
        jobcard: json["jobcard"],
        clientName: json["client_name"],
        scopeOfWork: json["scope_of_work"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        gstNumber: json["gst_number"],
        estimateNumber: json["estimate_number"],
        poNumber: json["po_number"],
        poDate: DateTime.parse(json["po_date"]),
        targetCompletionDate: DateTime.parse(json["target_completion_date"]),
        particular: json["particular"],
        qty: json["qty"],
        rate: json["rate"],
        value: json["value"],
        marketterId: json["marketter_id"],
        recceId: json["recce_id"],
        production: json["production"],
        designing: json["designing"],
        data: json["data"],
        installerId: json["installer_id"],
        installerStatus: json["installer_status"],
        status: json["status"],
        isReceeVerrified: json["is_recee_verrified"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "jobcard": jobcard,
        "client_name": clientName,
        "scope_of_work": scopeOfWork,
        "address": address,
        "city": city,
        "state": state,
        "gst_number": gstNumber,
        "estimate_number": estimateNumber,
        "po_number": poNumber,
        "po_date": "${poDate.year.toString().padLeft(4, '0')}-${poDate.month.toString().padLeft(2, '0')}-${poDate.day.toString().padLeft(2, '0')}",
        "target_completion_date": "${targetCompletionDate.year.toString().padLeft(4, '0')}-${targetCompletionDate.month.toString().padLeft(2, '0')}-${targetCompletionDate.day.toString().padLeft(2, '0')}",
        "particular": particular,
        "qty": qty,
        "rate": rate,
        "value": value,
        "marketter_id": marketterId,
        "recce_id": recceId,
        "production": production,
        "designing": designing,
        "data": data,
        "installer_id": installerId,
        "installer_status": installerStatus,
        "status": status,
        "is_recee_verrified": isReceeVerrified,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
