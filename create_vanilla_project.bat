@echo off

:: /// Create directory ///
mkdir docs
mkdir fonts
mkdir images
mkdir pages
mkdir scripts\classes
mkdir scripts\functions
mkdir styles

:: /// Vars ///
setlocal EnableDelayedExpansion

:: /// Html ///
set "html001=<^!DOCTYPE html>"
set "html002=<html lang='en'>"
set "html003=<head>"
set "html004=    <meta charset='UTF-8'>"
set "html005=    <meta http-equiv='X-UA-Compatible' content='IE=edge'>"
set "html006=    <meta name='viewport' content='width=device-width, initial-scale=1.0'>"
set "html007=    <link rel='stylesheet' href='./styles/general.css'>"
set "html008=    <title>Document</title>"
set "html009=</head>"
set "html010=<body>"    
set "html011=</body>"
set "html012=<script src='./scripts/app.js'></script>"
set "html013=</html>"

:: /// Css ///
set "css001=*, :after, :before{"
set "css002=    margin: 0;"
set "css003=    padding: 0;"
set "css004=    box-sizing: border-box;"
set "css005=}"

:: /// Js - App ///
set "js001=export default class App{"
set "js002=}"

:: /// Js - app ///
set "js003=import { App } from './classes/App.js'"
set "js004=const app = new App()"

:: /// Js - selectors ///
set "js005=const $ = (query) => document.querySelector(query)"
set "js006=const $$ = (query) => document.querySelectorAll(query)"

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
    echo !js001!
    echo !js002!
) > scripts\classes\App.js

(
    echo !js003!
    echo.
    echo !js004!
) > scripts\app.js

(
    echo !js005!
    echo !js006!
) > scripts\functions\selectors.js

(
    echo !css001!
    echo !css002!
    echo !css003!
    echo !css004!
    echo !css005!
) > styles\general.css

type nul >scripts\classes\Manager.js
type nul >scripts\classes\Ui.js

:: /// Open project
code .