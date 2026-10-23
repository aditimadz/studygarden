# Little Study Garden

A pastel study tracker. Every unit you finish grows a flower. Missed deadlines make plants wilt.
It is a plain website (no build step). Accounts and saving use Supabase's free plan.

Files: `index.html` (the site), `config.js` (your two Supabase values), `supabase.sql` (one-time database setup).

## 1. Set up the free database (about 5 minutes)
1. Go to supabase.com, sign up, click **New project**. Pick any name and region, set a database password (save it), click **Create**. Wait for it to finish.
2. Left menu: **SQL Editor** → **New query**. Open `supabase.sql`, copy everything, paste, click **Run**. It should say "Success".
3. Left menu: **Authentication** → **Sign In / Providers** (or **Providers**) → **Email**. Turn **Confirm email** OFF and save.
   This lets people sign up instantly. Supabase's built-in email sender only delivers to your own team and is limited to 2 emails an hour, so confirmation emails would never reach your friends.
4. Left menu: **Project Settings** → **API** (or **Data API / API Keys**). Copy the **Project URL** and the **anon / publishable key**.
5. Open `config.js`, paste the URL and key between the quotes, save.

## 2. Put it on GitHub
1. github.com → **New repository** → name it `little-study-garden` → **Create**.
2. **uploading an existing file** → drag in `index.html`, `config.js`, `supabase.sql`, `README.md` → **Commit changes**.

## 3. Put it on Vercel
1. vercel.com → sign in with GitHub → **Add New → Project** → pick the repo → **Deploy** (leave all settings alone).
2. You get a link like `little-study-garden.vercel.app`.
3. Back in Supabase: **Authentication** → **URL Configuration** → set **Site URL** to that link and save.

Done. Open the link, click **Log in or sign up**, make an account.

## Sharing
Log in, click **Share**, click **Create link**, send the link. Whoever opens it sees your garden and syllabus, view only. **Turn off link** stops it at any time.

## Good to know
- The anon key is meant to be public. Each account's data is protected by the rules in `supabase.sql`.
- Free Supabase projects pause after 1 week with no activity. Opening the site and logging in at least once a week keeps it awake. If it pauses, click **Restore** in the Supabase dashboard.
- "Forgot password" email only works after you add a custom email sender in Supabase (Authentication → SMTP Settings, for example with Brevo's free plan), then set `passwordResetEmail: true` in `config.js`. Until then, there is no password reset.
- Without a config, the site still works and saves in each browser only.
