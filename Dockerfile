# استخدام صورة أساسية من Python
FROM python:3.9-slim

# تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع إلى مجلد العمل
COPY . .

# تثبيت التبعيات المذكورة في requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# تعيين الأمر الافتراضي لتشغيل التطبيق
CMD ["python", "bot.py"]
