# HANA뿐인 PX — 배포 가이드

나라사랑카드 맞춤 혜택 테스트(부스/QR 참여용)와 결과 대시보드를 배포하는 방법입니다.
별도 빌드 과정이 없는 **정적 사이트**라 폴더째 업로드하면 바로 동작합니다.

> 참고: 이 파일은 원래 패키지에서 이미지 파일로 덮어써져 손상돼 있던 것을 복구한 문서입니다.
> 함께 손상됐던 `style.css`(→ 실제 CSS)와 `dashboard.html`(→ 실제 대시보드)도 브랜드·구조에 맞춰 재구성했습니다.

---

## 1. 구성 파일

| 파일 | 역할 |
|---|---|
| `index.html` | 참여자용 테스트 화면 (QR 랜딩) |
| `dashboard.html` | 운영자용 결과 대시보드 (비밀번호 보호) |
| `style.css` | 공용 스타일 (하나 그린 + PX 보급소 테마) |
| `data.js` | 질문·카테고리·혜택 데이터 |
| `config.js` | Supabase 연결 정보, 대시보드 비밀번호, 앱 링크 |
| `supabase-schema.sql` | Supabase 테이블 + 정책 생성 SQL |
| `*.png` | 로고/심볼/캐릭터 이미지 |
| `.nojekyll` | GitHub Pages에서 Jekyll 처리 비활성화 |
| `PUT_HANA2_FONTS_HERE.txt` | (선택) Hana2.0 폰트 추가 안내 |

---

## 2. (선택) Hana2.0 폰트 추가

공식 하나 폰트를 쓰려면 `Hana2-Regular.ttf`, `Hana2-Medium.ttf`, `Hana2-Bold.ttf`,
`Hana2-Heavy.ttf` 를 이 폴더(루트)에 넣으세요. `style.css` 가 자동으로 불러옵니다.
넣지 않아도 한글 대체 폰트로 정상 표시됩니다.

---

## 3. Supabase 연결 (결과 집계용)

연결하지 않으면 결과가 **참여자 브라우저의 localStorage에만** 저장되어 부스 노트북 한 대에서만
집계됩니다. 여러 기기/여러 참여자 결과를 한 대시보드에 모으려면 Supabase 연결을 권장합니다.

1. [supabase.com](https://supabase.com) 에서 프로젝트를 만듭니다.
2. **SQL Editor** 에 `supabase-schema.sql` 내용을 붙여넣고 실행합니다.
   - `hana_px_results` 테이블과 익명 참여용 RLS 정책이 생성됩니다.
3. **Project Settings → API** 에서 `Project URL` 과 `anon public` 키를 복사합니다.
4. `config.js` 를 열어 값을 채웁니다.

```js
const HANA_PX_CONFIG = {
  supabaseUrl: "https://<your-project>.supabase.co",
  supabaseAnonKey: "eyJhbGciOi...",        // anon public 키
  tableName: "hana_px_results",
  dashboardPassword: "원하는_비밀번호",       // 대시보드 접속용
  appLinks: { /* 그대로 유지 */ }
};
```

> `campaign_id` 는 `data.js` 의 `campaignId`(`hana-px-2026-0718`)와 SQL 정책의 값이 반드시 일치해야
> 저장·조회가 됩니다. 캠페인을 새로 만들 땐 두 곳을 함께 바꾸세요.

---

## 4. 배포

### 방법 A — Netlify (드래그 앤 드롭, 가장 쉬움)
1. [app.netlify.com/drop](https://app.netlify.com/drop) 접속
2. 이 폴더 전체를 브라우저 창에 끌어다 놓기
3. 발급된 주소를 QR로 만들어 부스에 부착

### 방법 B — GitHub Pages
1. 이 폴더를 저장소에 올립니다. (`.nojekyll` 포함)
2. **Settings → Pages → Branch: main / root** 로 설정
3. 몇 분 뒤 `https://<user>.github.io/<repo>/` 에서 공개

QR은 `index.html` 주소(예: `.../index.html` 또는 루트)를 가리키게 만드세요.

---

## 5. 대시보드 사용

- 주소: 배포 URL 뒤에 `/dashboard.html`
- 접속 시 `config.js` 의 `dashboardPassword` 입력 → 통계 확인
- 총 참여자 / 오늘 참여 / 혜택 유형 분포 / 추천 혜택 TOP / 최근 참여 내역 표시
- 우측 상단 **새로고침** 으로 최신 데이터 반영

---

## 6. 보안 참고

- `dashboardPassword` 는 클라이언트(JS)에 들어가므로 소스보기로 노출됩니다. **간단한 접근 차단용**이며
  민감 데이터 보호 수단이 아닙니다.
- 기본 SQL 정책은 익명(anon) **읽기**를 허용합니다(행사 테스트 편의용). 실제 운영에서는
  대시보드 조회를 Supabase 인증 사용자/관리자 전용 정책으로 바꾸는 것을 권장합니다.
- 저장 데이터에는 개인 식별 정보가 없어야 합니다(현재는 유형·혜택·응답·User-Agent만 저장).
