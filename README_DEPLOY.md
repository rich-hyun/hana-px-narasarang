# HANA뿐인 PX 디자인 개선 버전

## 배포 방법
1. 이 폴더 전체를 Netlify의 `Drag and drop your project folder here` 영역에 다시 업로드합니다.
2. 기존 사이트에 덮어올리는 경우 Netlify 프로젝트 화면의 `Production deploys` 박스에 이 폴더를 그대로 드래그하면 됩니다.
3. 메인 페이지: `/index.html` 또는 사이트 기본 주소
4. 대시보드: `/dashboard.html`

## 포함된 디자인 요소
- 하나금융그룹 로고/심볼 적용
- 하나금융그룹 캐릭터 이미지 적용
- 하나은행 그린/민트 계열 컬러 적용
- PX 느낌의 카모플라주 배경, 보급 미션 카드, 군부대 태그형 UI 적용
- 모바일 QR 접속에 맞춘 반응형 레이아웃 적용

## Hana2.0 폰트 적용 방법
폰트 파일은 이 패키지에 포함하지 않았습니다.
공식 Hana2.0 폰트를 웹에서 보이게 하려면, 업로드 전에 이 파일들과 같은 폴더(최상단)에 아래 파일을 직접 넣으세요.

- Hana2-Regular.ttf
- Hana2-Medium.ttf
- Hana2-Bold.ttf
- Hana2-Heavy.ttf

폰트를 넣지 않아도 사이트는 정상 작동하며, 브라우저 기본 한글 폰트로 표시됩니다.


## 대시보드 비밀번호

대시보드 주소는 `배포주소/dashboard.html`입니다.
접속 시 운영자 비밀번호를 입력해야 하며, 기본 비밀번호는 아래와 같습니다.

```text
hana0706
```

비밀번호를 바꾸고 싶으면 `config.js`의 `dashboardPassword` 값을 수정한 뒤 Netlify에 다시 업로드하면 됩니다.
정적 웹페이지 특성상 브라우저 화면 접근을 막는 용도이며, 완전한 서버 보안은 나중에 Supabase Auth나 별도 관리자 인증으로 보완하는 것을 권장합니다.


## NEW 하나원큐 앱 연결 구조

결과 페이지 하단에 `NEW 하나원큐 설치/실행 CTA`가 추가되어 있습니다.

- Android 접속자: Google Play의 NEW 하나원큐 앱으로 이동
- iPhone 접속자: App Store의 NEW 하나원큐 앱으로 이동
- PC 접속자: 하나 APP라운지 안내 페이지로 이동
- 보조 버튼: Google Play, App Store, 하나은행 앱 이용 등록 가이드

앱 링크를 바꾸려면 `config.js`의 `appLinks` 값을 수정하면 됩니다.


## 하나원큐 공식 QR 연결 변경 사항

- 결과 페이지의 가장 큰 CTA 버튼은 `하나원큐 접속하기`입니다.
- 이 버튼은 사무국 제공 QR코드에서 확인한 연결 주소 `https://m.site.naver.com/2c2Wd`로 이동합니다.
- 따라서 참여자는 `HANA뿐인 PX 테스트 → 결과 확인 → 하나원큐 접속하기` 흐름으로 이동합니다.
- `config.js`의 `appLinks.officialOneQ` 값을 바꾸면 나중에 사무국 QR 링크 변경 시 바로 반영할 수 있습니다.
- QR 제공 플랫폼이 단축링크 접속 수를 집계하는 방식이면 버튼 클릭도 해당 링크 접속으로 집계될 수 있습니다.
