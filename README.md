> Kullanıcı sisteme üye olup, üyeliğiyle giriş yapabiliyor. Eğerki kullanıcı şifresini unuttuysa, e-mail'ine yeni bir şifre gidiyor (node.js-nodemailer).  Şifreler MongoDB'de hashlenmiş şekilde tutuluyor. Kullanıcı üyeliğini onaylamadıysa,backend tarafında isVerified = false olarak kalıyor. Login olan Kullanıcıya (jsonwebtoken ile) token atanıyor ve buna göre yetkisi kontrol ediliyor. Kullanıcı sistemden başarıyla çıkış yapıp, tekrar aynı işlemleri başarıyla yapabiliyor

#### * NOT: Tüm Error hataları, backend tarafında handle edilip kullanıcıya SnackHelper olarak yansıtılıyor. Mobil tarafta ise  ui hataları handle edilip kullanıcıya bunlarda gösteriliyor.

### Login Screen
<img width="306" alt="Ekran Resmi 2022-07-06 20 04 27" src="https://user-images.githubusercontent.com/13710309/177605121-e196a3a9-d691-4815-83d2-ac90987f9691.png">

### Register
<img width="427" alt="Ekran Resmi 2022-07-06 20 09 47" src="https://user-images.githubusercontent.com/13710309/177605975-8c1c460c-3318-496f-ad8b-61ad96da7cd5.png">

### Forgot Password ( with nodemailer)
<img width="427" alt="Ekran Resmi 2022-07-06 20 10 01" src="https://user-images.githubusercontent.com/13710309/177606003-32237b38-629b-4d60-93e8-f3ce8628d8a3.png">

### MongoDB
<img width="1348" alt="Ekran Resmi 2022-07-06 20 22 14" src="https://user-images.githubusercontent.com/13710309/177608134-55c0c83e-ee75-4b69-ac9b-6044d42fbfff.png">
