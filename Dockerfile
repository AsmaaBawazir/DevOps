# استخدم صورة Python رسمية
FROM python:3.11-slim

# مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملف المتطلبات وتثبيت المكتبات
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# نسخ كل الملفات الأخرى
COPY . .

# افتح البورت 5000
EXPOSE 5000

# تشغيل التطبيق باستخدام gunicorn
CMD ["python" , "app.py"]