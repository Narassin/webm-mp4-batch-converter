::-----------------------------------------------------
::                Webm Converter
::-----------------------------------------------------
@echo off
echo WEBM Conversion Starting 

(for %%i in ("webm\*.webm") do (
    echo -----------------------------------------------------
    echo Coverting %%i
    echo -----------------------------------------------------
    ffmpeg -i "%%i" -c:v libx264 -crf 18 -preset veryslow -c:a aac -b:a 128k  "mp4\%%~ni.mp4"
))

echo -----------------------------------------------------
echo CONVERSION COMPLETED YOU CAN CLOSE THE WINDOW NOW
echo -----------------------------------------------------