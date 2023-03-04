<h1 align="center"> Resume 8 Advance Function - Async-Await - Collection </h1>

## Fungsi Lanjutan
### 1. Anonymous Function 
Adalah Fungsi yang tidak memiliki nama serta berfungsi sebagai suatu data
#### Contoh :
    var hello (){
    print(hello); //anonymous function
#### Memanggil Anonymous function 
    hello();
### 2. Arrow Function
Merupakan Function yang menggunaka => untuk mendeklarasikan fungsi. Fungsi ini hanya dapat diisi 1 proses sehingga penggunaan nya tidak sefleksibel fungsi biasanya.Namun penggunaan arrow funtion dapat mempercepat penulisan code.
#### Contoh :
    var hello() => print("hello"); //arrow function
    void main(){
    hello(); //memanggil arrow function
    }
## Async-Await
### Async-Await
Asnyc berfungsi untuk menjalankan beberapa fungsi secara bersamaan dimana normal nya sebuah fungsi pemograman dijalankan dari proses atas ke bawah,dengan async ini fungs fungsi dijalankan secara bersamaan.
Await berfungsi untuk menunggu proses async selesai terlebih dahulu

###Future
Merupaka tipe data yang dapat ditunggu serta mereturn dari fungsi Async

## Collection
### List
List berfungsi menyimpan data secara berbaris, list menggunakan index untuk menyimpan tiap data
#### Contoh:
    void main () {
    List list[1,2,3]}
    
    Print(list);
    }
### Map
Map berfungsi menyimpan data secara Key Value Dimana key berfungsi sebagai index jika di list serta kita bisa memanggil map dengan key nya
#### Contoh:
    void main(){
    Map map = {
      'Nama': 'Alex'
      };
       print(map["Nama"]);
    }
    
  
