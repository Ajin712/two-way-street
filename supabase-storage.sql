-- Run this once in the Supabase SQL Editor.
-- The application stores photo URLs in app_state/archive_weeks, so this bucket
-- must be public for browsers to render the images and compose the archive grid.
insert into storage.buckets (id, name, public)
values ('photos', 'photos', true)
on conflict (id) do update set public = true;

-- Needed when a person retries a photo upload with the same generated path.
create policy "allow updates" on storage.objects
for update using (bucket_id = 'photos') with check (bucket_id = 'photos');
