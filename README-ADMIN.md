# Admin panel

Admin URL: `/admin`. Foydalanuvchi sayti `/` manzilida qoladi.

Render → service → Environment ichida quyidagi secretlarni belgilang:

- `ADMIN_USERNAME`: alohida admin login.
- `ADMIN_PASSWORD`: kamida 16 belgili kuchli parol.

Secretlar sozlanmaguncha admin kirishi yopiq. Ochiq ro‘yxatdan o‘tish admin huquqini bermaydi. Admin cookie foydalanuvchi sessiyasidan alohida, HttpOnly va SameSite=Strict, muddati 1 soat. Parolni almashtirishdan keyin redeploy avvalgi admin sessiyalarini bekor qilishi uchun admin_sessions jadvalini ham tozalash kerak.

Panel: foydalanuvchilarni qidirish, sahifalash, saqlash/AI/loyiha ishlatilishini ko‘rish, Free/Monthly/Premium/Full tarifini berish, hisobni bloklash va ochish, foydalanuvchi sessiyalarini bekor qilish. Tarif berish sanasidan 1/3/12 oy amal qiladi; Free muddatsiz. Admin amallari admin_audit jadvaliga yoziladi.

Bepul Render storage vaqtinchalik: foydalanuvchilar, tariflar va audit restartda yo‘qolishi mumkin. Secretlar Render sozlamalarida qoladi.
