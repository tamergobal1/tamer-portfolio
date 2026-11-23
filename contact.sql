-- Contact form messages (run once in Supabase > SQL Editor)
create table if not exists public.contact_messages (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 1 and 100),
  email text not null check (char_length(email) between 3 and 200 and email like '%@%.%'),
  message text not null check (char_length(message) between 1 and 3000),
  lang text check (lang in ('ar','en')),
  created_at timestamptz not null default now()
);

alter table public.contact_messages enable row level security;

-- The website (anon key) may ONLY insert. Nobody can read messages with the public key.
drop policy if exists "public can send" on public.contact_messages;
create policy "public can send" on public.contact_messages
  for insert to anon with check (true);
