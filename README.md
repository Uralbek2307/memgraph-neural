# Memgraph Neural

A project workspace for files, notes and collaboration, with an Uzbek interface.

**[Try Memgraph](https://memgraph-neural.onrender.com/) · [Compare plans](https://memgraph-neural.onrender.com/tariflar) · [Ask the admin on Telegram](https://t.me/MemgraphSavdo2307Bot?start=savdo)**

## What it does

- Organize files and notes by project.
- Share work with other users through the application's collaboration features.
- Manage your account, projects and available storage.
- Ask about plans and arrange manual activation through the Telegram assistant.

## Current hosting limitation

The public instance is an early testing service on free Render hosting with temporary storage. Accounts and uploaded files may be lost when the service restarts. Use sample files, keep your own copies, and confirm that persistent storage is ready before purchasing a plan or using it for important work. AI responses depend on the external provider's availability and quota.

## Listed plans

| Plan | Total price and duration | Storage | Projects |
| --- | --- | --- | --- |
| Free | Free | 100 MB | 3 |
| Oylik | $3 for 1 month | 500 MB | 15 |
| Premium | $10 for 3 months | 2 GB | 60 |
| Full | $80 for 1 year | 10 GB | Unlimited |

Prices are in USD. Payment is arranged with the human administrator; Click and Payme automatic payments are not connected. A plan is activated only after the administrator verifies receipt. Do not send passwords, CVV or SMS verification codes.

## O‘zbekcha

Memgraph — fayllar va qaydlarni loyihalar bo‘yicha tartiblash uchun ish maydoni. [Sayt bilan tanishing](https://memgraph-neural.onrender.com/) yoki [tariflarni ko‘ring](https://memgraph-neural.onrender.com/tariflar). Hozirgi hosting vaqtinchalik diskdan foydalanadi: muhim fayllarning yagona nusxasini yuklamang. Tarif olishdan oldin doimiy saqlash tayyorligini admin bilan kelishing.

## Run locally

Node.js 24 or newer is required. Set the environment variables appropriate to your installation, then run:

```sh
npm run check
npm start
```

The default local address is `http://localhost:8787`. Keep API keys and credentials in environment variables; do not commit them.
