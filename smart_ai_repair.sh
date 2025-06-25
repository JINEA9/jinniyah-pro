#!/bin/bash

# إعداد مجلد النهاية
FINAL_DIR=~/الجنية_النهائية
mkdir -p "$FINAL_DIR"

echo -e "\e[96m📁 يتم نقل الملفات إلى مجلد الجنية النهائية...\e[0m"

# نقل الملفات الأساسية
mv ~/jinniyah/jinniyah_pro.py "$FINAL_DIR" 2>/dev/null
mv ~/jinniyah/vuln_hunter_pro.py "$FINAL_DIR" 2>/dev/null
mv ~/jinniyah/vuln_hunter_pro_v2.py "$FINAL_DIR" 2>/dev/null
mv ~/run_all_intelligent.sh "$FINAL_DIR" 2>/dev/null
mv ~/ngrok "$FINAL_DIR" 2>/dev/null

# حذف الملفات الزائدة والمتكررة
echo -e "\e[91m🧹 حذف الملفات غير الضرورية...\e[0m"
rm -f ~/الجنية/*.pyy ~/الجنية/*.ZIP ~/الجنية/ngrok

# الانتقال إلى مجلد المشروع النهائي وتشغيل السكربت
cd "$FINAL_DIR"
chmod +x run_all_intelligent.sh

echo -e "\e[92m🚀 تشغيل المشروع الذكي الآن...\e[0m"
./run_all_intelligent.sh
