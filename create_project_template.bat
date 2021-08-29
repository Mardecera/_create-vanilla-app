@echo off

:: /// Create directory ///
mkdir src\image
mkdir assests\js
mkdir assests\css

:: /// Vars ///
setlocal EnableDelayedExpansion

:: /// Html ///
set "html001=<^!DOCTYPE html>"
set "html002=<html lang='en'>"
set "html003=<head>"
set "html004=    <meta charset='UTF-8'>"
set "html005=    <meta http-equiv='X-UA-Compatible' content='IE=edge'>"
set "html006=    <meta name='viewport' content='width=device-width, initial-scale=1.0'>"
set "html007=    <link rel='stylesheet' href='./assests/css/style.css'>"
set "html008=    <title>Document</title>"
set "html009=</head>"
set "html010=<body>"    
set "html011=</body>"
set "html012=<script src='./assests/js/script.js'></script>"
set "html013=</html>"

:: /// Css ///
set "css001=*{"
set "css002=    margin: 0;"
set "css003=    padding: 0;"
set "css004=    box-sizing: border-box;"
set "css005=}"
set "css007=:after, :before{"
set "css008=    margin: 0;"
set "css009=    padding: 0;"
set "css010=    box-sizing: border-box;"
set "css011=}"

:: /// Create files -> HTML - CSS - JS ///
(
    echo !html001!
    echo !html002!
    echo !html003!
    echo !html004!
    echo !html005!
    echo !html006!
    echo !html007!
    echo !html008!
    echo !html009!
    echo !html010!
    echo !html011!
    echo !html012!
    echo !html013!
) > index.html

(
    echo !css001!
    echo !css002!
    echo !css003!
    echo !css004!
    echo !css005!
    echo.
    echo !css007!
    echo !css008!
    echo !css009!
    echo !css010!
    echo !css011!
) > assests\css\style.css

type nul >assests\js\script.js

:: /// Open project
code .