class CallModel {
  String? countryCode;
  String? phoneNumber;
  String? callTime;

  CallModel({this.countryCode, this.phoneNumber, this.callTime});

  CallModel.fromJson(Map<String, dynamic> json) {
    countryCode = json['countryCode'];
    phoneNumber = json['phoneNumber'];
    callTime = json['callTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['countryCode'] = countryCode;
    data['phoneNumber'] = phoneNumber;
    data['callTime'] = callTime;
    return data;
  }
}
