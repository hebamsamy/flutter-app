class api<T, tt> {
  String msg = "";
  int code = 0;
  T? data;
}

void main() {
  api ttt = api<int, String>();
  ttt.data = 2;

  List<String> names = ["habe", "ali"];

  names.forEach((item) => print(item));
  names.forEach((item) {
    print(item);
  });
  
}
