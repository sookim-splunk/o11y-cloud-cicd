# 베이스 이미지
FROM python:3.11-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사
COPY app.py .
COPY requirements.txt .

# 의존성 설치
RUN pip install -r requirements.txt

# 앱 실행
CMD ["python", "app.py"]

