# 📘 Tutorial 2 Game Development

## 1. Pesan Log pada Panel Output

### Saat objek dibuat dan saat pesawat masuk Objective Area

Pesan log yang dicetak pada panel Output :

- `platform initialized` -> muncul saat objek platform dibuat
- `Object reached` -> muncul ketika pesawat masuk ke dalam area objektif

### Saat landasan digerakkan ke batas bawah lalu ke atas

Pesan log yang dicetak:

- `Reached objective!`

## 2. Kaitan ObjectiveArea dengan Pesan Log

**Pertanyaan:**  
Buka scene `MainLevel` dengan tampilan workspace 2D. Apakah lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

**Jawaban:**  
Ya, memiliki kaitan. Karena dari **ObjectiveArea** digunakan **signal `body_entered`**, sehingga ketika pesawat masuk ke area tersebut, fungsi signal dipanggil dan mencetak pesan log di panel Output.

## 3. Fungsi Node Sprite2D

**Pertanyaan:**  
Scene `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah child node bertipe `Sprite2D`. Apa fungsi dari node bertipe Sprite2D?

**Jawaban:**  
`Sprite2D` berfungsi untuk **menampilkan gambar (sprite)** pada scene sebagai representasi visual dari objek.

## 4. Perbedaan RigidBody2D dan StaticBody2D

**Pertanyaan:**  
Root node dari scene` BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. BlueShip menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe node?

**Jawaban:**

- **RigidBody2D** dipengaruhi oleh hukum fisika. Objek dapat jatuh, terdorong, atau terpental.
- **StaticBody2D** tidak terpengaruh oleh hukum fisika dan bersifat statis. Biasanya digunakan sebagai tembok, lantai, atau penghalang.

## 5. Mengubah Nilai Mass pada RigidBody2D (BlueShip)

**Pertanyaan:**  
Ubah nilai atribut Mass pada tipe `RigidBody2D` secara bebas di scene `BlueShip`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?

**Jawaban:**  
Pada scene saat ini tidak terjadi apa apa karena dengan massa dimanipulasi dan tidak menerapkan percepatan yang terjadi sehingga gerakan mendorong sama saja walaupun massa dimanipulasi jikalau ada manipulasi dari perecepatan gerak maka akan terlihat perbedaanya

## 6. Mengubah Nilai Disabled pada CollisionShape2D (StonePlatform)

**Pertanyaan:**  
Ubah nilai atribut Disabled milik node `CollisionShape2D` pada scene `StonePlatform`, lalu coba jalankan scene MainLevel. Apa yang terjadi?

**Jawaban:**  
Pada **StonePlatform** tidak terjadi apa apa karena bersifat static body sehingga objek tidak terjadi apa apa

## 7. Manipulasi Position, Rotation, dan Scale pada BlueShip

**Pertanyaan:**  
Pada scene `MainLevel`, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?

**Jawaban:**

- Jika **Position** dimanipulasi, maka posisi awal pesawat akan berpindah.
- Jika **Rotation** dimanipulasi, maka pesawat akan berputar.
- Jika **Scale** dimanipulasi, maka ukuran pesawat akan membesar atau mengecil sesuai nilai yang dimasukkan.

## 8. Perbedaan Nilai Position PlatformBlue, StonePlatform, dan StonePlatform2

**Pertanyaan:**  
Pada scene `MainLevel`, perhatikan nilai atribut Position node `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

**Jawaban:**  
Karena **StonePlatform** dan **StonePlatform2** menjadi child dari **PlatformBlue**, maka titik (0,0) mereka dihitung relatif terhadap posisi **PlatformBlue**. Oleh karena itu, nilai Position yang terlihat di Inspector adalah posisi lokal terhadap **PlatformBlue**, bukan posisi global di scene, sehingga terlihat berbeda walaupun secara visual posisinya sudah benar.
