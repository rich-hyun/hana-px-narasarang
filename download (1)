window.HANA_PX_DATA = {
  campaignId: "hana-px-2026-0718",
  title: "HANA뿐인 PX",
  subtitle: "나라사랑카드 맞춤 혜택 보급소",
  categories: {
    px: {
      name: "PX 보급왕",
      icon: "🪖",
      description: "군마트·편의점·생활비 절약에 가장 민감한 실속형입니다.",
      color: "#00856f"
    },
    transport: {
      name: "휴가 기동대",
      icon: "🚌",
      description: "외출·외박·휴가 때 교통비와 이동 편의성을 가장 중요하게 봅니다.",
      color: "#1976d2"
    },
    food: {
      name: "외식 작전반",
      icon: "🍔",
      description: "배달, 외식, 카페처럼 먹는 즐거움을 놓치지 않는 타입입니다.",
      color: "#f59e0b"
    },
    digital: {
      name: "디지털 통신병",
      icon: "📱",
      description: "모바일 결제, 앱, 온라인 쇼핑, 구독 서비스를 자주 활용하는 타입입니다.",
      color: "#7c3aed"
    },
    culture: {
      name: "문화 생활병",
      icon: "🎬",
      description: "영화, 스포츠, 여가 활동에서 혜택을 잘 챙기는 타입입니다.",
      color: "#e11d48"
    },
    saving: {
      name: "월급 관리관",
      icon: "💰",
      description: "군 급여, 자동이체, 저축처럼 돈 관리에 관심이 많은 타입입니다.",
      color: "#0f766e"
    }
  },
  benefits: {
    px_cashback: {
      title: "군마트/PX 캐시백",
      tag: "PX",
      description: "군 생활 중 자주 쓰는 PX 소비를 줄여주는 핵심 생활 혜택입니다."
    },
    cu_discount: {
      title: "CU 편의점 혜택",
      tag: "편의점",
      description: "외출·외박 때 간식, 음료, 생활용품 구매에 어울리는 혜택입니다."
    },
    transport_cashback: {
      title: "대중교통·택시 혜택",
      tag: "이동",
      description: "휴가 복귀, 외출 이동, 시내 이동이 많은 사람에게 잘 맞는 혜택입니다."
    },
    delivery_food: {
      title: "배달·외식 혜택",
      tag: "식비",
      description: "휴가 중 친구를 만나거나 배달 음식을 자주 이용할 때 유용한 혜택입니다."
    },
    online_shopping: {
      title: "쿠팡·온라인 쇼핑 혜택",
      tag: "쇼핑",
      description: "생활용품, 전자기기, 선물 구매를 온라인으로 해결하는 사람에게 추천됩니다."
    },
    digital_life: {
      title: "NEW 하나원큐 앱 활용",
      tag: "앱",
      description: "계좌 조회, 이체, 카드 관리 등 금융 업무를 모바일로 빠르게 처리할 수 있습니다."
    },
    movie_culture: {
      title: "영화·문화 혜택",
      tag: "문화",
      description: "휴가나 외출 때 영화, 여가 활동을 즐기는 사람에게 잘 맞습니다."
    },
    sports_event: {
      title: "스포츠 관람·이벤트 혜택",
      tag: "스포츠",
      description: "경기장 방문, 현장 이벤트, 응원 활동과 함께 소개하기 좋은 혜택입니다."
    },
    salary_management: {
      title: "군 급여·자산관리",
      tag: "관리",
      description: "군 급여 입금 후 소비와 저축을 나눠 관리하고 싶은 사람에게 적합합니다."
    },
    auto_payment: {
      title: "자동이체·고정비 관리",
      tag: "고정비",
      description: "통신비, 구독료, 자동이체처럼 매달 나가는 돈을 관리할 때 유용합니다."
    }
  },
  questions: [
    {
      id: "q1",
      text: "군 생활에서 가장 아깝다고 느끼는 지출은?",
      choices: [
        { text: "PX에서 자주 사는 간식·생활용품", scores: { px: 3 }, benefits: ["px_cashback", "cu_discount"] },
        { text: "휴가 때 왕복 교통비", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "배달·외식 비용", scores: { food: 3 }, benefits: ["delivery_food"] },
        { text: "온라인 쇼핑·구독 결제", scores: { digital: 3 }, benefits: ["online_shopping", "digital_life"] }
      ]
    },
    {
      id: "q2",
      text: "휴가 첫날, 가장 먼저 하고 싶은 것은?",
      choices: [
        { text: "집 가는 길 교통비부터 아끼기", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "친구들과 맛있는 음식 먹기", scores: { food: 3 }, benefits: ["delivery_food"] },
        { text: "영화 보거나 경기 보러 가기", scores: { culture: 3 }, benefits: ["movie_culture", "sports_event"] },
        { text: "필요한 물건 온라인으로 주문하기", scores: { digital: 2, px: 1 }, benefits: ["online_shopping"] }
      ]
    },
    {
      id: "q3",
      text: "나라사랑카드에서 가장 끌리는 키워드는?",
      choices: [
        { text: "PX", scores: { px: 3 }, benefits: ["px_cashback"] },
        { text: "교통", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "배달/외식", scores: { food: 3 }, benefits: ["delivery_food"] },
        { text: "모바일 금융", scores: { digital: 2, saving: 1 }, benefits: ["digital_life", "salary_management"] }
      ]
    },
    {
      id: "q4",
      text: "평소 소비 스타일에 가까운 것은?",
      choices: [
        { text: "소액을 자주 쓴다", scores: { px: 2, food: 1 }, benefits: ["px_cashback", "cu_discount"] },
        { text: "한 번 쓸 때 크게 쓴다", scores: { digital: 2, culture: 1 }, benefits: ["online_shopping", "movie_culture"] },
        { text: "이동할 때 돈이 많이 든다", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "돈을 모으는 게 더 중요하다", scores: { saving: 3 }, benefits: ["salary_management", "auto_payment"] }
      ]
    },
    {
      id: "q5",
      text: "NEW 하나원큐 앱을 쓴다면 가장 자주 확인할 것 같은 기능은?",
      choices: [
        { text: "카드 사용 내역", scores: { digital: 2, saving: 1 }, benefits: ["digital_life"] },
        { text: "계좌 잔액과 급여 입금", scores: { saving: 3 }, benefits: ["salary_management"] },
        { text: "이체와 송금", scores: { digital: 2, saving: 1 }, benefits: ["digital_life"] },
        { text: "혜택과 이벤트", scores: { culture: 2, px: 1 }, benefits: ["sports_event", "px_cashback"] }
      ]
    },
    {
      id: "q6",
      text: "PX에 들어갔을 때 가장 먼저 보는 코너는?",
      choices: [
        { text: "간식·음료", scores: { px: 3 }, benefits: ["px_cashback"] },
        { text: "생활용품", scores: { px: 2, saving: 1 }, benefits: ["px_cashback", "salary_management"] },
        { text: "선물용 제품", scores: { digital: 2 }, benefits: ["online_shopping"] },
        { text: "일단 가격표부터 본다", scores: { saving: 3 }, benefits: ["salary_management"] }
      ]
    },
    {
      id: "q7",
      text: "나라사랑카드 혜택을 가장 자주 활용할 것 같은 순간은?",
      choices: [
        { text: "PX·편의점에서 간식이나 생활용품을 살 때", scores: { px: 3 }, benefits: ["px_cashback", "cu_discount"] },
        { text: "휴가·외출 때 교통수단을 이용할 때", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "친구들과 외식하거나 문화생활을 즐길 때", scores: { food: 2, culture: 1 }, benefits: ["delivery_food", "movie_culture"] },
        { text: "앱으로 소비 내역이나 군 급여를 관리할 때", scores: { digital: 2, saving: 1 }, benefits: ["digital_life", "salary_management"] }
      ]
    },
    {
      id: "q8",
      text: "한 달 예산을 관리한다면 가장 먼저 줄이고 싶은 항목은?",
      choices: [
        { text: "간식·편의점", scores: { px: 2, saving: 1 }, benefits: ["cu_discount", "px_cashback"] },
        { text: "교통비", scores: { transport: 3 }, benefits: ["transport_cashback"] },
        { text: "배달·외식", scores: { food: 3 }, benefits: ["delivery_food"] },
        { text: "구독·온라인 결제", scores: { digital: 2, saving: 1 }, benefits: ["auto_payment", "digital_life"] }
      ]
    },
    {
      id: "q9",
      text: "카드 혜택을 설명받을 때 가장 좋은 방식은?",
      choices: [
        { text: "내 상황에 맞춰 추천받기", scores: { digital: 2 }, benefits: ["digital_life"] },
        { text: "혜택 금액을 바로 보기", scores: { saving: 3 }, benefits: ["salary_management"] },
        { text: "실제 사용 예시로 보기", scores: { px: 1, transport: 1, food: 1 }, benefits: ["px_cashback", "transport_cashback", "delivery_food"] },
        { text: "이벤트처럼 재미있게 체험하기", scores: { culture: 3 }, benefits: ["sports_event", "movie_culture"] }
      ]
    },
    {
      id: "q10",
      text: "당신에게 나라사랑카드는 어떤 카드였으면 좋겠나요?",
      choices: [
        { text: "군 생활비를 확 줄여주는 카드", scores: { px: 2, saving: 1 }, benefits: ["px_cashback", "salary_management"] },
        { text: "휴가 때 든든한 카드", scores: { transport: 2, culture: 1 }, benefits: ["transport_cashback", "movie_culture"] },
        { text: "외식과 여가를 더 즐길 수 있는 카드", scores: { food: 2, culture: 1 }, benefits: ["delivery_food", "sports_event"] },
        { text: "앱으로 쉽게 관리되는 카드", scores: { digital: 2, saving: 1 }, benefits: ["digital_life", "auto_payment"] }
      ]
    }
  ]
};
