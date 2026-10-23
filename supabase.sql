-- Run this once in Supabase: SQL Editor -> New query -> paste -> Run.

create table if not exists public.garden_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  share_token text unique,
  updated_at timestamptz not null default now()
);

alter table public.garden_data enable row level security;

-- Each person can only see and change their own row.
create policy "own select" on public.garden_data for select using (auth.uid() = user_id);
create policy "own insert" on public.garden_data for insert with check (auth.uid() = user_id);
create policy "own update" on public.garden_data for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "own delete" on public.garden_data for delete using (auth.uid() = user_id);

-- Lets someone with a share link read one garden, and nothing else.
create or replace function public.get_shared_garden(t text)
returns jsonb
language sql
security definer
set search_path = public
as $$
  select data from public.garden_data where share_token = t and t is not null and length(t) >= 16 limit 1
$$;

grant execute on function public.get_shared_garden(text) to anon, authenticated;
