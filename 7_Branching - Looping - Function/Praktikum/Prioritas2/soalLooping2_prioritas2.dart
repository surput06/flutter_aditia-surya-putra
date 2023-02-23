import 'dart:io';

// Jam Pasir
void main() {
  int i, j, k, n = 10;

  for (i = 0; i <= n - 1; i++) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("0" + " ");
    }

    stdout.writeln("");
  }

  for (i = n - 2; i >= 0; i--) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }

    for (k = i; k <= n - 1; k++) {
      stdout.write("0" + " ");
    }

    stdout.writeln("");
  }
}
