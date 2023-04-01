<h1 align="center"> 
17_Assets
</h1>

## Assets 
Secara garis besar Assets adalah file yang dibundle dan di deploy bersamaan dengan aplikasi . Dengan menggunakan assets kita dapat mudah mengakses hal yang diperlukan untuk pemograman. Tipe tipe assets adalah JSon,icon, image dan tff(font).

## Cara inisiasi asset
Pada pubspec.yaml kita masukan direktori assest
# 
    
    assets:
    - assets/
## Image 
Merupaka sebuah gambar yang digunakan untuk membuat tampilan aplikasi lebih menarik dan juga untuk penyampaian informasi yang berupa gambar.
Jenis jenis format image pada flutter adalah JPEG,WebP,GIF,PNG,BMP
Cara menggunakan image :
# 
      //untuk image yang tersedia di lokal
      Image.asset('direktori'),
      //untuk image yang diambil dari internet
      Image.network('url')
## Font 
Dapat digunakan untuk memperbagus tampilan sebuah aplikasi
Font dapat digunakan dengan cara import ke asset atau dengan menggunakan packages
Font bisa didapat website penyedia font seperti google font

### Cara menginisiasi font di flutter
Masukan dulu font kedalam folder font didalama assets
lalu daftarkan font dipubspec.yaml
### 
    fonts:
        - family: Alkatra
          fonts:
            - asset: assets/fonts/Alkatra-Regular.ttf
              weight: 400
