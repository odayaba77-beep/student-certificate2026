@echo off
chcp 65001 > nul
title نظام درجات وشهادات مدرسة الموهوبين
echo ========================================================
echo   جاري تشغيل نظام درجات وشهادات مدرسة الموهوبين...
echo ========================================================
if exist "dist\index.html" (
    start "" "dist\index.html"
) else if exist "تشغيل_النظام_مباشرة.html" (
    start "" "تشغيل_النظام_مباشرة.html"
) else (
    start "" "index.html"
)
exit
