set CUR_DIR=%~dp0
cd /d %CUR_DIR%
call npm install
call npm run build
xcopy /y package.json dist
xcopy /y README.md dist
cd dist
call npm publish .
cd /d %CUR_DIR%
pause
