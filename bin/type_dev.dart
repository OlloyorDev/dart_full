// type dev bu
// asosan functionlarga ishlatilinadigan narsa bolib
// foydali tomonlari bizga codeni oson o'qishga yordam beradi
// qulayligi function nima return qiberishini codeni o'qishni boshlaganimizda
// bilinadi.

void main() {
  int a = plusFunction(a: 10, b: 5);
  print(a);
}

int plusFunction({required int a, required int b}) {
  print('TypeDevs');
  int overall = 0;
  overall = a + b;
  return overall;
}
