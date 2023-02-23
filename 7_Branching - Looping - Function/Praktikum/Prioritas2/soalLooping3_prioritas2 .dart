void main() {
  var nilai = 10;
  // var nilai = 40;
  // var nilai = 50;
  var faktorial = 1;

  for (var i = 2; i <= nilai; i++) {
    faktorial = faktorial * i;
  }

  print('Faktorial dari nilai $nilai adalah $faktorial');
}
