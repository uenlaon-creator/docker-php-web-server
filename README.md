cat <<EOF > README.md
# 🐳 Docker + PHP Web Server Project

Docker 가상화 기술을 활용하여 어디서나 동일하게 구동 가능한 PHP 웹 서버 환경을 구축한 프로젝트입니다.

## 🛠 Tech Stack
- **Infrastructure:** Docker
- **Web Server:** Apache (embedded in PHP Image)
- **Language:** PHP 8.2

## 🚀How to Run
본 프로젝트는 Docker가 설치된 환경에서 아래 명령어로 즉시 실행 가능합니다.

\`\`\`bash
# 1. 이미지 빌드
docker build -t my-php-app .

# 2. 컨테이너 실행
docker run -d -p 8081:80 --name my-web-server -v \$(pwd):/var/www/html my-php-app
\`\`\`

## 📌 Key Features
- **Containerization:** 서버 환경을 컨테이너화하여 '환경 의존성' 문제 해결.
- **Volume Mount:** 로컬 소스 코드와 컨테이너 내부 경로를 동기화하여 실시간 개발 환경 구축.
- **Port Forwarding:** 호스트의 8081 포트와 컨테이너의 80 포트를 연결하여 외부 접속 허용.
EOF# docker-php-web-server

공격 유형,가상 시나리오,대응 방안 (My Action)
SQL Injection,          로그인 폼에 악성 SQL 주입 시도,             Prepared Statement 적용으로 입력값 데이터화
Information Leak,       에러 메시지를 통한 서버 구조 파악,            try-catch문 및 에러 리포팅 제어로 정보 노출 차단
Resource Exhaustion,    무한 루프나 과부하 공격으로 서버 마비,         Docker Compose Resource Limit 설정으로 가용성 확보
Privilege Escalation,   컨테이너 탈취 후 Host 권한 획득 시도,        비루트(Non-root) 사용자 계정 실행으로 피해 최소화
