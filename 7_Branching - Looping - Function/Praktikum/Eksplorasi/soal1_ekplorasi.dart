import 'dart:io';

bool prima(Nilai) {
  for (var i = 2; i <= Nilai / i; ++i) {
    if (Nilai % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  // var Nilai = 23;
  var Nilai = 12;
  if (prima(Nilai)) {
    print('$Nilai adalah bilangan prima.');
  } else {
    print('$Nilai bukan bilangan prima.');
  }
}
