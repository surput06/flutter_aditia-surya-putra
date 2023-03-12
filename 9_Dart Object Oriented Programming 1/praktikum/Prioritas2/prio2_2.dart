import 'dart:io';

//membmuat class course dan contructornya
class Course {
  String judul;
  String deskripsi;

  Course({required this.judul, required this.deskripsi});
}

//membuat kelas student dan constructornya
class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];
  Student({required this.nama, required this.kelas});
//method tambah Course
  tambahCourse(Course course) {
    daftarCourse.add(course);
    print("~Course telah ditambahkan~");
    stdout.write("Jumlah Course Saat ini : ");
    print(daftarCourse.length);
  }

//method hapus course
  hapusCourse(Course course) {
    daftarCourse.remove(course);
    print("~~Course telah dihapus~~");
    stdout.write("Jumlah Course Saat ini : ");
    print(daftarCourse.length);
  }

//method lihat course
  lihatCourse(Course course) {
    print("List course yang diambil $nama dari kelas $kelas adalah :");
    for (int i = 0; i < daftarCourse.length; i++) {
      print("${i + 1}. ${daftarCourse[i].judul}");
      print("Deskripsi :${daftarCourse[i].deskripsi}");
    }
  }
}

void main() {
  //membuat object flutter , golang, uiUx,  aditia
  Course flutter =
      Course(judul: "Flutter", deskripsi: "Mempelajari Framework Flutter");

  Course golang = Course(judul: "Golang", deskripsi: "Mempelajari Golang");
  Course uiUx = Course(judul: "UI/UX", deskripsi: "Mempelajari UI/UX");

  Student aditia = Student(nama: "Aditia Surya Putra", kelas: "Kelas D");
//memanggil method
  aditia.tambahCourse(flutter);
  aditia.tambahCourse(golang);
  aditia.tambahCourse(uiUx);
  aditia.hapusCourse(golang);
  aditia.lihatCourse(flutter);
}
