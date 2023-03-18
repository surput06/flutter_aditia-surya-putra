<h1 align="center"> 
12_Installation Command Line Interface and Package Management in Flutter

 </h1>

## Flutter CLI
Merupakan alat yang digunakan untuk berinteraksi dengan sdk. Perintah Cli ini dijalankan di terminal
### Flutter Doctor
Perintah untuk mengetahui apa saja yang di perlukan flutter
### Fluter Create
    fluter create <nama_project>
Perintah yang digunakan untuk membuat project dart

### Flutter Run
    fluter run <nama_project>
Perintah yang untuk menjalankan project

### Flutter Emulator
    fluter emulators 
Perintah yang digunakan untuk cek emulator yang tersedia

### Flutter Channel
    fluter channel 
Perintah yang digunakan untuk cek sub versi flutter 

### Flutter Pub
     flutter pub add <packages>
Menambahakan packages ke dependencies
   
    flutter pub get 
Menambahkan package yang ada di pubspec.yaml
### Flutter Clean
    fluter clean
Menguninstal semua packages

## Packages Management
Flutter mendukung penggunaan sharing packages yang dibuat dev lain sehingga dapat mempercepat proses pengembangan. 

### Cara menggunakan Packages
- Cari packages di pub.dev
- Copy baris dependcies di bagian instaling
- lalu paste di pubspec.yaml
- pub get di terminal
- lalu import packages
