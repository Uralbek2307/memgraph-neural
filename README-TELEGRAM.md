# Telegram savdo yordamchisi

Bot: https://t.me/MemgraphSavdo2307Bot

Render secret: TELEGRAM_BOT_TOKEN. Admin Telegram ID: TELEGRAM_ADMIN_CHAT_ID.
Tokenni GitHub yoki hujjatlarga yozmang. Server ishga tushganda HTTPS webhookni o‘zi sozlaydi, Telegram secret headeri tokenning SHA-256 qiymati bilan tekshiriladi.

## Adminni bog‘lash

`/admin` ichida Telegram bo‘limidan bog‘lash havolasini yarating. Bu bir martalik, 10 daqiqalik havola. Telegram’da ochib START bosing. Yangilash tugmasidan keyin paneldagi Chat ID ni Render TELEGRAM_ADMIN_CHAT_ID secretiga saqlang: shunda bepul instance restartida ham hisobot manzili qoladi.

## Mijoz va buyurtma

Mijoz saytga kirib tarifni tanlaydi; shaxsiy bot havolasi hisobini botga bog‘laydi. Bot adminga buyurtma yuboradi. Faqat bog‘langan admin chatidagi ikki bosqichli tasdiq tarifni faollashtiradi. Mijozning xabari yoki tugmasi to‘lov tasdig‘i hisoblanmaydi. Bir buyurtma takror tasdiqlansa muddat ikkinchi marta uzaymaydi.

FAQ javoblari: tarif va narxlar, kirish va parolni tiklash. Boshqa xabarlar adminga yuboriladi. `/reply CHAT_ID matn` bilan javob yuborish mumkin. `/report` bugungi hisoboti, `/tariflar` narxlar menyusi.

## Hisobot

GitHub Actions workflow har kuni 16:00 UTC (21:00 Asia/Tashkent) ga sozlangan. Tashqi trigger faqat oldindan belgilangan adminga, 21:00 dan keyin kuniga bir marta hisobot yuboradi; javobida shaxsiy ma’lumot yo‘q. GitHub scheduler kechikishi mumkin, public repoda uzoq faolsizlikda reja to‘xtatilishi mumkin.

MUHIM: bepul Render SQLite vaqtinchalik. Restart/deploy/uyqu holatida buyurtmalar, foydalanuvchilar va sotuvlar tarixi yo‘qolishi mumkin. Bu rejimdagi hisobot moliyaviy hisob-kitob uchun to‘liq manba emas. Haqiqiy sotuvlar uchun doimiy disk yoki tashqi doimiy baza kerak. Telegram’dagi yuborilgan xabarlar chatda qoladi, lekin ular bazani avtomatik tiklamaydi.
