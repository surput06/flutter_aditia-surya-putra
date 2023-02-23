void main() {
  // input nilai
  String? normal = ('kasur rusak');

  // fungsi palindrom
  String? dibalik = normal.split('').reversed.join('');

  if (normal == dibalik) {
    print('kata tersebut Palindrome');
  } else {
    print('kata tersebut bukan Palindrome');
  }
}
