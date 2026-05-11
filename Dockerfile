FROM php:8.2-apache
# 컨테이너 내부의 웹 서버 경로로 이동
WORKDIR /var/www/html
# 현재 폴더의 모든 파일을 컨테이너로 복사
COPY . /var/www/html/
# 80번 포트 개방
EXPOSE 80
