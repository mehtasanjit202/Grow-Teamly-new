class ProfileModel {
  String? FullName;
  String? email;
  String? phoneNumber;
  String? supervisorName;
  String? dateofBirth;
  ProfileModel(this.dateofBirth,this.email,this.FullName,this.phoneNumber,this.supervisorName);
  ProfileModel.fromJson(Map<String,dynamic> json){
    FullName=json['data']['full_name'];
    email=json['data']['email'];
    phoneNumber=json['data']['mobile_number'];
    dateofBirth=json['data']['dob'];
    supervisorName=json['data']['parent_user']['full_name'];
  }
  
}