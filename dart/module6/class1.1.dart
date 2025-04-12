//async function = complete the specific function first then go to the next function
//mainly used for API calling in flutter 
main(){
  userAbleToVote(15).then((Value){
    if(Value){
      print("Able to vote");
    }else{
      print("Not able to vote");
    }
  }
  );

  test();

  login("11234", "321546").then((value){
    if(value){
      print("Success");
    }else{
      print("Failed");
    }
   }
  );
}

Future<bool> userAbleToVote(int age) async {
  if(age > 18){
    return true;
  }else{
    return false;
  }
}

Future <void> test() async{
  await Future.delayed(Duration(seconds: 5),(){
    print("Will show after 5 seconds");
  }
  );
 print("Function ended");
}

Future<bool> login(String phone, String password) async{
  String userPhone = "0123";
  String userPass = "1234";

  if(userPhone==phone && userPass==password){
    return true;
  }else{
    return false;
  }
}

