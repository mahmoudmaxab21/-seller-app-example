class PostPostLoginResp {
  String? status;
  String? message;
  Data? data;

  PostPostLoginResp({this.status, this.message, this.data});

  PostPostLoginResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  int? userType;
  bool? isActive;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  dynamic updatedBy;
  String? phoneNumber;
  String? email;
  dynamic mobileNo;
  String? username;
  String? token;

  Data(
      {this.id,
      this.name,
      this.userType,
      this.isActive,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.updatedBy,
      this.phoneNumber,
      this.email,
      this.mobileNo,
      this.username,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userType = json['userType'];
    isActive = json['isActive'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    updatedBy = json['updatedBy'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    mobileNo = json['mobileNo'];
    username = json['username'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (userType != null) {
      data['userType'] = userType;
    }
    if (isActive != null) {
      data['isActive'] = isActive;
    }
    if (isDeleted != null) {
      data['isDeleted'] = isDeleted;
    }
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      data['updatedAt'] = updatedAt;
    }
    if (updatedBy != null) {
      data['updatedBy'] = updatedBy;
    }
    if (phoneNumber != null) {
      data['phone_number'] = phoneNumber;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (mobileNo != null) {
      data['mobileNo'] = mobileNo;
    }
    if (username != null) {
      data['username'] = username;
    }
    if (token != null) {
      data['token'] = token;
    }
    return data;
  }
}
