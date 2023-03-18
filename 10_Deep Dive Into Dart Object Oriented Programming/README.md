<h1 align="center"> 
10_Deep Dive Into Dart Object Oriented Programming
 </h1>

## Object Oriented Programing
Adalah sebuah metode pembuatan pemograman yang di orientasikan ke dalam bentuk objek.OOP memiliki beberapa keuntungan diantaranya OOP muda di troublshotingnya dan OOP mudah untuk di gunakan kembali

### Constructor 
Merupakanan Method yang dijalankan Saat pembuatan object ,method ini dapat menerima parameter dan tidak dapat di return serta namanya sama dengan nama dari class tersebut 
#### Contoh
    class Hewan{
    int kaki;
    hewan(){
    kaki = 2;
     }
    }
### Inheritance 
Inheritance bisa disebut juga dengan pewarisan. Berfungsi supaya class baru mempunyai kemampuan yang diwarisi dari super class atau kelas yang di extends
#### Contoh
    class Hewan{
    int kaki;
    hewan(){
    kaki = 2;
     }
    }
    class Jerapah extends Hewan{
    kaki = 4;
    }
  ### Method Overriding 
  Melakukan method yang sama dengan proses yang berbeda
  #### Contoh
    class Hewan{
    method (){
    print("berjalan")
    }
    class burung extends Hewan{
    method (){
    print("terbang")
    }
    }
### Interface
Mirip Seperti inheritance namun dalam interface semua method wajib di override
#### Contoh
      class Hewan{
    method (){
    print("berjalan")
    }
    class burung implements Hewan{
    method (){
    print("terbang")
    }
    }
    
    
