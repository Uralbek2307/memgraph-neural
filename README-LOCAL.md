# Memgraph — lokal saytni ochish

## Render va Google Gemini

Loyiha Render Blueprint uchun `render.yaml` bilan tayyorlangan. Render'da doimiy SQLite va yuklangan fayllar `/var/data` diskida saqlanadi. `GEMINI_API_KEY` faqat Render Secret sifatida kiritiladi; uni Git yoki `.env` fayliga commit qilmang.

Gemini doimiy ma'lumotlar bazasi o'rnini bosmaydi. SQLite hisoblar, fayllar va yozuvlarni saqlaydi; Gemini esa faqat joriy foydalanuvchiga ruxsat berilgan matnli manbalarni javob yaratish uchun qayta ishlaydi. Render'dagi umumiy sayt uchun lokal demo o'chirilgan — har bir foydalanuvchi alohida hisob yaratadi.

Render sozlamalari:

- Runtime: Node
- Build command: `npm run check`
- Start command: `npm start`
- Health check: `/health`
- Persistent disk: `/var/data`, 1 GB
- Secret: `GEMINI_API_KEY`
- Optional model override: `GEMINI_MODEL`

## Eng oson yo‘l

1. `Open-Memgraph.cmd` faylini ikki marta bosing.
2. Brauzerda `http://localhost:8787` ochiladi.
3. **Demo ichiga kirish** tugmasini bosing. Ro‘yxatdan o‘tmasdan barcha ichki bo‘limlarni ko‘rasiz.
4. O‘z ma’lumotlaringiz uchun **O‘z makoningizni yarating** orqali alohida hisob oching. Tiklash kodini saqlang.

Kompyuteringizdagi Node runtime ZIP ichidan saqlab qolingan. Hosting, domen va qo‘shimcha npm o‘rnatish kerak emas. Internet uzilganda ham mahalliy fayllar va asosiy funksiyalar ishlaydi. Google Drive ulanishi uchun internet va OAuth konfiguratsiyasi kerak.

`index.html`ni ikki marta bosish ilovaning server funksiyalarini yoqmaydi. `Open-Memgraph.cmd` orqali oching.

## Ichkarida nimalar bor?

- Yangilangan landing sahifa va UZ / EN interfeys.
- Lokal demo hisobi va B2B namunaviy loyiha.
- Dashboard: xotira qidiruvi, so‘nggi qarorlar, fayllar va vazifalar.
- Fayl yuklash, qayd yozish, matnni ko‘rish va ruxsatlarni boshqarish.
- Loyihalar: fayllar, qarorlar tarixi, vazifalar, bilimlar grafi va uchrashuv jamlanmasi.
- Shaxsiy hisob, parol, tiklash kodi va faol sessiyalar.
- Do‘stlik so‘rovlari, guruhlar, chatlar, fayl ulashish va xabardan vazifa yaratish.
- Savat, tiklash, butunlay o‘chirish, JSON eksport va yorug‘/qorong‘i rejim.

Chat va guruhlarni real ishlatish uchun bir xil lokal serverda ikkita alohida hisob kerak. Ikkinchi hisobni brauzerning private/incognito oynasida ochib sinash mumkin. Demo hisobida soxta do‘stlar yoki yuborilgan xabarlar yaratilmaydi.

## Ma’lumotlar

`data` papkasida SQLite bazasi, yuklangan fayllar va token shifrlash kaliti saqlanadi. Bu papkani o‘chirmang. Zaxira nusxa olishdan oldin Memgraph serverini to‘xtating, keyin butun `data` papkasini nusxalang.

Demo hisobi shu kompyuterda namoyish uchun ochiq. Maxfiy ma’lumotni demo hisobiga joylamang; alohida shaxsiy hisob ishlating.

Sayt faqat `127.0.0.1`ga bog‘langan. Bu ommaviy hosting emas va boshqa kompyuterga avtomatik ochilmaydi.

## Haqiqiy imkoniyat chegaralari

- Qidiruv — ruxsat berilgan TXT, MD, CSV va JSON matnlari bo‘yicha kalit so‘z qidiruvi.
- Tashqi AI, semantik vektor qidiruvi va avtomatik qaror chiqarish ulanmagan.
- PDF/DOCX va boshqa binar fayllar saqlanadi va yuklab olinadi, ammo matn ajratish ishlamaydi.
- Google Drive uchun `.env` orqali `GOOGLE_CLIENT_ID` va `GOOGLE_CLIENT_SECRET` kerak. Ushbu o‘zgarishda yangi provayder yoki billing ulanmagan.
- UI tilini almashtirish hujjatning asl matnini tarjima qilmaydi.

## Qo‘lda ishga tushirish

PowerShell oynasida loyiha papkasiga o‘ting:

```powershell
$env:HOST='127.0.0.1'
$env:PORT='8787'
$env:PUBLIC_ORIGIN='http://localhost:8787'
$env:ALLOW_LOCAL_DEMO='1'
node server.mjs
```

So‘ng `http://localhost:8787`ni oching. Shu terminalda Ctrl+C bosish serverni to‘xtatadi.

## Dizayn yo‘nalishi va fayllar

Original ZIP o‘zgartirilmagan. `index.original.html` va `server.original.mjs` boshlang‘ich nusxalardir.

- `design.css`: yangi ranglar, responsive layout, landing, dashboard va dark mode.
- `enhancements.js`: ikki tildagi landing, demo kirish va dashboard xotira qidiruvi.
- `server.mjs`: mavjud lokal API va cheklangan lokal demo kirish.

Ilhom: Awwwards Clean Design kolleksiyasi — https://www.awwwards.com/websites/clean/

Tartibli editorial kompozitsiya, yirik tipografiya va manbalarni ko‘rsatadigan mahsulot diagrammasi asosida original Memgraph dizayni yaratildi. Saytdan tayyor dizayn, kod yoki brend ko‘chirilmadi. Mukofot yoki tashqi reyting da’vo qilinmaydi.


## Cyberpunk / Neural Edition ? 26.10.2026

Interfeys qora neon, binafsha, elektr ko?k va pushti aksentlar bilan yangilandi. Yashil ranglar almashtirildi. Landing va boshqaruv markazida interaktiv 3D xotira yadrosi, loyihalarda aylantiriladigan 3D graf mavjud. Canvas orqali haqiqiy 3D koordinatalar perspektivada chiziladi; WebGL yoki tashqi CDN talab qilinmaydi.

Yuqoridagi doira belgisi 3D harakatni yoqadi/o?chiradi. Tizimning reduced-motion sozlamasi ham hisobga olinadi. Graf tugunini yoki pastdagi qulay ro?yxatni bosib asl manbani ochish mumkin.

Demo kirish: har bir sessiya 5 soat. Server cookie va SQLite sessiyasida limitni tekshiradi. Qolgan vaqt tepada ko?rinadi. Yangilash va faol demo kirish tugmasini takror bosish muddatni uzaytirmaydi. Muddat tugaganda hisobdan chiqiladi va xususiy ma?lumotlar interfeysdan tozalanadi. Demo hisobi va uning ma?lumotlari o?chirilmaydi. Qayta kirish yangi sessiya yaratadi. Shaxsiy hisoblar sessiya muddati o?zgartirilmagan.

Yangi fayllar: `cyber.css`, `cyber.js`, `test-demo.mjs`, `check-cyber.py`. Oldingi dizayn nusxalari `backup-pre-cyber-20261026` papkasida.

Tekshiruvlar: 46 ta mavjud API testi, 6 ta demo muddati testi, 11 ta brauzer tekshiruvi (besh soatni tezlashtirib avtomatik chiqish sinovi bilan).

Dizayn ilhomi:
- https://www.getlayers.ai/ ? 3D sahnalar, qatlamlar va cinematic kompozitsiya.
- https://www.awwwards.com/inspiration/interactive-globe-onramper ? interaktiv 3D ma?lumot xaritasi yo?nalishi. Asosiy Awwwards sahifasi yuklanmagani uchun tegishli inspiration sahifasining qidiruvdagi indekslangan tavsifi ko?rildi.

Bu original Memgraph implementatsiyasi; tashqi sayt kodi, pullik shablon yoki mukofot da?vosi ko?chirilmagan.
