# Bluesky Cloud - GitHub Copilot Instructions

## 프로젝트 개요

Spring Cloud 기반의 마이크로서비스 인프라를 제공하는 프로젝트입니다.

Config Server, Eureka Server, Gateway, Admin Server 등을 포함합니다.

## 기술 스택

- Java 17
- Spring Boot 3.x
- Spring Cloud
- Spring Cloud Config
- Netflix Eureka
- Spring Cloud Gateway
- Spring Boot Admin
- MariaDB
- Prometheus, OpenTelemetry
- Kubernetes

## 모듈 구조

```
bluesky-cloud/
├── bluesky-cloud-parent/
│   ├── bluesky-cloud-config-server/      # Config Server
│   ├── bluesky-cloud-netflix-eureka-server/  # Service Registry
│   ├── bluesky-cloud-gateway/            # API Gateway
│   └── bluesky-cloud-admin-server/       # Admin Server
├── docker-compose.yml                    # Docker 구성
├── kubernetes-*.yaml                     # Kubernetes 배포 설정
└── Dockerfile                            # 컨테이너 이미지
```

## 주요 서비스

### 1. bluesky-cloud-config-server

**역할**: 중앙 설정 서버

**포트**:

- Local: 30101
- Dev: 40101

**주요 기능**:

- Git 기반 설정 관리
- JDBC 기반 설정 저장
- 암호화/복호화 (JKS Keystore)
- Profile별 설정 (localdev, k8sdev)
- Eureka Client 통합
- Kubernetes Client 통합

**설정 파일**: `src/main/resources/application.properties`

**암호화 설정**:

```properties
encrypt.keyStore.location=classpath:/bluesky.jks
encrypt.keyStore.password=blueskyPass
encrypt.keyStore.alias=bluesky-Project
encrypt.keyStore.secret=blueskyPass
```

**Git 설정 (old_profile)**:

```properties
spring.cloud.config.server.git.uri=https://github.com/luversof/bluesky-config-repo
spring.cloud.config.server.git.default-label=develop
```

**JDBC 설정 (jdbc profile)**:

```properties
spring.cloud.config.server.jdbc.sql=SELECT `KEY`, `VALUE` from PROPERTIES where APPLICATION=? and PROFILE=? and LABEL=?
```

**데이터베이스 연결**:

- Local: `jdbc:mariadb://mariadb.bluesky.local:3306/spring_config`
- K8s: `jdbc:mariadb://mariadb-service.opensource/spring_config`

**Dependencies**:

- spring-cloud-config-server
- spring-cloud-starter-netflix-eureka-client
- spring-cloud-starter-kubernetes-client-all
- spring-boot-admin-starter-client
- spring-boot-starter-jdbc
- mariadb-java-client
- micrometer-registry-prometheus
- micrometer-tracing-bridge-otel
- opentelemetry-exporter-otlp

### 2. bluesky-cloud-netflix-eureka-server

**역할**: 서비스 레지스트리

**주요 기능**:

- 마이크로서비스 등록/조회
- 서비스 헬스 체크
- 클라이언트 로드 밸런싱

### 3. bluesky-cloud-gateway

**역할**: API Gateway

**주요 기능**:

- 라우팅
- 로드 밸런싱
- 인증/인가
- Rate Limiting

### 4. bluesky-cloud-admin-server

**역할**: 관리 서버

**주요 기능**:

- 서비스 모니터링
- 로그 조회
- 메트릭 수집

## 설정 저장소

### bluesky-config-repo

**위치**: `https://github.com/luversof/bluesky-config-repo`

**브랜치**: develop

**주요 파일**:

- `bootstrap_v2.4.yml`: Spring Boot 2.4+ 설정
- `bootstrap.yml`: 기본 설정
- `test.properties`: 테스트 설정

**사용 방법**:

```properties
spring.config.import=https://raw.githubusercontent.com/luversof/bluesky-config-repo/develop/bootstrap_v2.4.yml
```

## 배포 환경

### Local Development

- Docker Compose 사용
- `docker-compose.yml` 참고

### Kubernetes

- ArgoCD로 배포 관리
- Namespace: 각 서비스별 분리
- Ingress: Traefik 사용

**배포 파일**:

- `kubernetes-bluesky-cloud-config-server.yaml`
- `kubernetes-bluesky-cloud-netflix-eureka-server.yaml`
- `kubernetes-bluesky-cloud-admin-server.yaml`

## 모니터링

### Prometheus

- 메트릭 수집
- Endpoint: `/actuator/prometheus`

### OpenTelemetry

- 분산 추적
- OTLP Exporter 사용

### Spring Boot Admin

- 서비스 상태 모니터링
- 로그 조회

## 사용 프로젝트

이 인프라는 다음 프로젝트들이 사용합니다:

- **bluesky-project**: 메인 비즈니스 애플리케이션
  - bluesky-api-\*
  - bluesky-web-\*
  - bluesky-batch-\*

## 코딩 규칙

### Config Server 참고

다른 프로젝트에서 Config 관련 설정이 필요한 경우, `bluesky-cloud-config-server`의 설정을 참고합니다.

### Profile 사용

- `localdev`: 로컬 개발 환경
- `k8sdev`: Kubernetes 개발 환경
- `prod`: Production 환경

### 암호화

민감한 정보는 반드시 암호화하여 저장합니다.

```properties
spring.datasource.password={cipher}AQBvRFjoe8YJ9dLw5WTlOSqGVIxcGS9x1L831KH5xO75+K/f...
```

## 의존성

**기반 라이브러리**:

- bluesky-boot
- bluesky-boot-crypto
- bluesky-boot-autoconfigure-devcheck
- bluesky-boot-autoconfigure-connectioninfo
