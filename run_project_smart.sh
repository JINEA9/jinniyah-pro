
#!/bin/bash

# إعداد المجلد النهائي
FINAL_DIR=~/jinniyah_final
mkdir -p $FINAL_DIR

echo -e "\e[96m🔄 نقل الملفات النهائية إلى مجلد: $FINAL_DIR\e[0m"

# نقل الملفات الأساسية
mv ~/jinniyah/jinniyah_pro.py $FINAL_DIR/ 2>/dev/null
mv ~/jinniyah/vuln_hunter_pro.py $FINAL_DIR/ 2>/dev/null
mv ~/jinniyah/vuln_hunter_pro_v2.py $FINAL_DIR/ 2>/dev/null
mv ~/ngrok $FINAL_DIR/ 2>/dev/null
mv ~/run_all_intelligent.sh $FINAL_DIR/ 2>/dev/null

# حذف الملفات غير الضرورية
echo -e "\e[91m🧹 حذف الملفات المؤقتة والمكررة...\e[0m"
rm -f ~/jinniyah/*.zip ~/jinniyah/*.pyy ~/ngrok.zip ~/vuln.zip ~/vuln_hunter.zip

# حفظ السجل
LOG_FILE=$FINAL_DIR/install.log
{
    echo "📝 سجل التثبيت - $(date)"
    echo "المجلد النهائي: $FINAL_DIR"
    echo "الملفات المتوفرة:"
    ls $FINAL_DIR
} > $LOG_FILE

# تعيين صلاحية التشغيل للسكربت الذكي
chmod +x $FINAL_DIR/run_all_intelligent.sh

# تشغيل ngrok تلقائي
echo -e "\e[92m✅ تفعيل ngrok باستخدام التوكن...\e[0m"
$FINAL_DIR/ngrok config add-authtoken 2ywfDqZtaxLBr4tuBhXW2Vhk8Up_s8botEWiuPCDav71gR3c >/dev/null 2>&1

# تشغيل السكربت الذكي
echo -e "\e[95m🚀 تشغيل أداة JINNIYAH + VULN_HUNTER تلقائياً...\e[0m"
cd $FINAL_DIR && ./run_all_intelligent.sh

