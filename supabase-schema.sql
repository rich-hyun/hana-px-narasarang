create table if not exists public.hana_px_results (
  id bigserial primary key,
  campaign_id text not null,
  result_type text not null,
  result_category text not null,
  top_benefit_ids text[] not null default '{}',
  scores jsonb not null default '{}'::jsonb,
  benefit_scores jsonb not null default '{}'::jsonb,
  answers jsonb not null default '[]'::jsonb,
  user_agent text,
  created_at timestamptz not null default now()
);

create index if not exists hana_px_results_campaign_created_idx
on public.hana_px_results (campaign_id, created_at desc);

create index if not exists hana_px_results_type_idx
on public.hana_px_results (campaign_id, result_type);

alter table public.hana_px_results enable row level security;

-- 행사 테스트용 공개 정책입니다.
-- index.html에서 익명 참여 결과를 저장하고, dashboard.html에서 통계를 읽기 위해 사용합니다.
-- 실제 운영 시에는 dashboard 읽기 권한을 관리자 전용으로 바꾸는 것을 권장합니다.
create policy "hana_px_public_insert"
on public.hana_px_results
for insert
to anon
with check (campaign_id = 'hana-px-2026-0718');

create policy "hana_px_public_select"
on public.hana_px_results
for select
to anon
using (campaign_id = 'hana-px-2026-0718');
