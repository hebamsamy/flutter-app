void main(){
  String name= "ITI Aswan";
  int age = 20;
  double GPA = 3.4;
  num grade = 50.5;

  print(Sum(4, 6));
  // SayHi(msg: "hh");
  SayHi(name: "Mira and Mona");
  SayHi(name: "Mira and Mona",msg:"Bye");

}


int Sum(int x,int y){
  return x+y;
}


void SayHi({required String name, String msg="HI"}){
  print("Heba says $msg to $name");
}