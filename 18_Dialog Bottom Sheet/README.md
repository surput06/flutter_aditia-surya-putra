<h1 align="center"> 
18_Dialog Bottom Sheet

 </h1>
 
 ## Task Management
 Secara garis besar Task Management Berfungsi untuk menambah kegiatan atau menghapus kegiatan
 
 ## Alert Dialog 
 Sebuah Popup yang muncul pada aplikasi yang berfungsi menginformasikan suatu situasi. Alert dialog dapat juga digunakan untuk mendapatkan input dari user.
 Untuk menggunakan Alert dialog diperlukan showDialog
 ###
       on press() {
            showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('This is a demo alert dialog.'),
                          Text('Would you like to approve of this message?'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Approve'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
              }
              
### Bottom Sheet 
Botom sheet kurang lebihnya seperti dialog namun bedanya bottom sheet muncul dari bagian bawah aplikasi. Penggunaanya dengan menggunakan showModalbottomsheet

###

         onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
 ### simpleDialog
 Pada dasarnya sama seperti alertDialog akan tetapi simpleDialog lebih mudah untuk diubah ubah dan fleksibel
 ###

     SimpleDialog(
            title: const Text('Select assignment'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, Department.treasury); },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, Department.state); },
                child: const Text('State department'),

Referensi : Flutter Documentation
