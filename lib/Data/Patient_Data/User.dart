class Patient{
     String? Ip;
     String ?Nom;
     String? Age;
     String? Sexe;
     String? Mail;
     String? Tel;
     String? Password;
     String? Doctor_Ip;

  Patient({
     this.Ip,
     this.Nom,
     this.Age,
     this.Sexe,
     this.Mail,
     this.Tel,
     this.Password,
    this.Doctor_Ip
     });
  Patient.fromJson(Map<String,dynamic>json){
    Ip= json['Ip'];
    Nom= json['Nom'];
    Age= json['Age'];
    Sexe= json['Sexe'];
    Mail= json['Mail'];
    Tel= json['Tel'];
    Password= json['Password'];
    Doctor_Ip= json['Doctor_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['Ip']= this.Ip.toString();
    data['Nom']= this.Nom.toString();
    data['Age']= this.Age.toString();
    data['Sexe']= this.Sexe.toString();
    data['Mail']= this.Mail.toString();
    data['Tel']= this.Tel.toString();
    data['Password']= this.Password.toString();
    data['Doctor_Ip']= this.Doctor_Ip.toString();
    return data;
  }

}


class LoginResponseModel {
  final String ?token;
  final String ?error;

  LoginResponseModel({this.token, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String ?Ip;
  String ?Password;

  LoginRequestModel({
    this.Ip,
    this.Password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'Ip': Ip?.trim(),
      'Password': Password?.trim(),
    };

    return map;
  }
}
