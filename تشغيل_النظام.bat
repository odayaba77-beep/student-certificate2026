@echo off
chcp 65001 > nul
title نظام إدارة الدرجات والمراكز الأكاديمية
echo ========================================================
echo        جاري تشغيل نظام إدارة الدرجات والمراكز
echo ========================================================
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [تنبيه] لم يتم العثور على برنامج Node.js في جهازك!
    echo.
    echo لأن هذا النظام مبني بتقنيات الويب الحديثة (React و TypeScript)،
    echo يتطلب تشغيله وجود محرك Node.js المجاني.
    echo.
    echo خطوات التثبيت لمرة واحدة فقط:
    echo 1. قم بتحميل وتثبيت Node.js من الموقع الرسمي: https://nodejs.org
    echo 2. بعد اكتمال التثبيت، اضغط مرتين على هذا الملف لتشغيل النظام مباشرة.
    echo.
    pause
    exit /b
)

if not exist node_modules (
    echo [1/2] جاري تثبيت متطلبات ومكتبات النظام للمرة الأولى...
    echo (يرجى الانتظار دقيقة واحدة فقط)...
    call npm install
    if %errorlevel% neq 0 (
        echo [خطأ] حدث خطأ أثناء تثبيت المكتبات. يرجى التأكد من اتصال الإنترنت.
        pause
        exit /b
    )
)

echo [2/2] جاري تشغيل النظام وفتح المتصفح تلقائياً...
start "" http://localhost:3000
call npm run dev
pause
