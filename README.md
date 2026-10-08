# NestAdsPartnerMoloco

파트너사가 Wisebirds NestAds 및 Moloco 인벤토리를 iOS 앱에 통합할 수 있도록 지원하는
**Moloco 파트너 어댑터 SDK** 입니다.

## 현재 릴리스

| 구성요소 | 버전 |
|---|---|
| NestAdsPartnerMoloco | `0.0.1` |
| NestAdsPartnerCore (전이 의존) | `0.0.1` 이상 |

## 설치 (Swift Package Manager)

Xcode → `File` → `Add Package Dependencies…` 에서 아래 URL 입력:

```
https://github.com/wisebirds/nestads-partner-ios-sdk-moloco
```

또는 `Package.swift` 직접 명시:

```swift
dependencies: [
    .package(
        url: "https://github.com/wisebirds/nestads-partner-ios-sdk-moloco",
        from: "0.0.1"
    )
]
```

`NestAdsPartnerCore` 는 이 패키지의 전이 의존성으로 자동 포함되므로 직접 추가할 필요가
없습니다.

> **기존 `nestads-partner-ios-sdk`(통합 패키지)를 쓰고 있었다면 그 의존성을 먼저 제거하세요.**
> 통합 패키지에도 같은 진입점 클래스(`NestAdsPartnerAutoHandler`)가 들어 있어, 파트너별 어댑터와
> 나란히 두면 한 프로세스에 같은 ObjC 클래스가 두 벌 등록되고 어느 쪽이 쓰일지가 로드 순서에
> 따라 달라집니다.

### 메인 NestAdsSDK 추가 (필수)

이 어댑터를 포함해 파트너 SDK 전체가 메인 NestAdsSDK 와 **런타임 브리지 방식**으로
연동됩니다(컴파일 의존 없음). 이 어댑터를 추가해도 메인 SDK 가 전이 의존으로 따라오지
않으므로 **메인 NestAdsSDK(2.16.0 이상)를 직접 추가**해야 합니다. 메인 SDK 가 없거나
브리지 미지원 버전이면 파트너 광고는 조용히 비활성되며 콘솔에 경고가 출력됩니다.

브리지 계약에 대한 자세한 내용은 [NestAdsPartnerCore README](https://github.com/wisebirds/nestads-partner-ios-sdk-core)
도 참고하세요.

## 요구 사항

- iOS 15.0+
- Swift 5.9+
- Xcode 15.0+

## 번들 의존성

| Framework | Source |
|---|---|
| MolocoSDK | GitHub `moloco/moloco-sdk-ios-spm` |

## 문의 및 지원

- 파트너 계약 및 기술 지원: Wisebirds NestAds 파트너십 팀
- Bug report: 내부 이슈 트래커

## 라이선스

Copyright © Wisebirds. All rights reserved.
