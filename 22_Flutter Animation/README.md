<h1 align="center">22_Flutter Animation
 </h1>
 
## Animation
Animasi merupakan Widget yang bergerak sehingga menambah daya tarik , dapat diatur Pergerakan dari kondisi A ke kondisi B

## Implicit Animations
Implicit Animations adalah animasi yang terjadi secara otomatis ketika widget diperbarui, seperti saat ukuran widget berubah atau saat teks berubah. Implicit Animations menggunakan kelas Animasi dan Tween untuk mengontrol transisi dari satu nilai ke nilai lainnya.
Contoh : 
Merubah ukuran container

      bool isBig= false;
      
      AnimatedContainer(
      width: isBig ? 200: 100,
      height: isBig? 200: 100,
      color: Colors.red,
      duration: const Duration(milliseconds: 300),
      );

## Transsition
Animasi yang muncul pada saat berpindah halaman , Menggunaka Navigator.Push()

      pageBuilder: (context, animation, secondaryAnimation) { return const AboutScreen();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) { final tween = Tween (begin: const Offset(0, .5), end: Offset.zero);
      return SlideTransition(
      position: animation.drive(tween),
      child: child,
      );
## Transisi yang umum digunakan 
- Fade transition

      transitionsBuilder: (context, animation, secondaryAnimation, child) { final tween = Tween (begin: const Offset(0, .5), end: Offset.zero);
      return FadeTransition(
      position: animation.drive(tween),
      child: child
      
- Scale transition

      transitionsBuilder: (context, animation, secondaryAnimation, child) { final tween = Tween (begin: const Offset(0, .5), end: Offset.zero);
      return ScaleTransition(
      position: animation.drive(tween),
      child: child
