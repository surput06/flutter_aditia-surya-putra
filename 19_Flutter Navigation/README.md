<h1 align="center"> 
19_Flutter Navigation

 </h1>
 
 ## Navigation/Navigasi
 
 Navigasi secara garis besar merupakan cara untuk berpindah dari halaman satu kehalaman lain.
 Navigasi tidak hanya berlaku untuk perpindahan halaman saja namun berlaku untuk berbagai hal seperti untuk kembali dari context mengguankan pop
 
### Macam - macam navigasi dasar

- Navigator push untuk pindah halaman 
- Navigator pop untuk kembali

### Beripindah ke halaman lain menggunakan route
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) {
         return AboutPage()
      })

### 
    class AboutPage extends StatelessWidget {
    const AboutPage({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Tentang Aplikasi'),
          ),
          body: Center(

### Beripindah ke halaman lain menggunakan route dan mengirim kan data 
Sama seperti diatas namun disini menambahkan parameter untuk mengirim dan menerima data
###
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) {
        return AboutPage(parameter: "data")

        })

### 
    class AboutPage extends StatelessWidget {
      final sring parameter
      const AboutPage({Key? key,parameter}) : super(key: key);
   

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Tentang Aplikasi'),
          ),
          body: Center(
  
### Navigation dengan Named Route

    
- Navigator.pushNamed untuk pindah halaman 
- Navigator.popNamed untuk kembali
### Harus mendaftarkan initiate route

     void main() {
      runApp(MaterialApp(
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomePage(),
          '/about': (context) => AboutPage(),
        },
      ));
    }
  
 ###
     body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: Text('Tap Untuk ke AboutPage'),
          
### Mengirim data dengan namedroute
      onPressed: () {
                Navigator.pushNamed(context, '/about',argument : "hore");
              },
          
###

      class AboutPage extends StatelessWidget {
     
      
   
      @override
      Widget build(BuildContext context) {
        final parameter : ModalRoute.Of(Context)!.setting.argument as string;
       return ...
