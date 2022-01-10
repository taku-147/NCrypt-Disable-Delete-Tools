@echo off
color f
whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
echo -----------------------------------------------------
echo Norton Crypto無効化/有効化/削除ツール Ver1.1 製作者:Taku_147
echo -----------------------------------------------------
echo このツールの実行には管理者権限が必要です。
echo このツールを右クリックして「管理者として実行」を押してください。
echo;
timeout 3 /NOBREAK > NUL
pause
exit
)
echo -----------------------------------------------------
echo Norton Crypto削除ツール Ver1.1 製作者:Taku_147
echo -----------------------------------------------------
echo 対応OS:Windows10/11
echo これはNortonの暗号通貨採掘ツールを削除するツールです。
echo 同意する場合は、手順に従って操作を進めてください。
echo;
pause
cls
echo 最初だけご自身で操作する必要があります。
echo -----------------------------------------
echo 0.「NCrypt_Disable_Tool.exe」を実行してない場合は、先にそちらを実行してください。
echo -----------------------------------------
echo 1.NortonSecurityを開いてください。
echo 2.右上の設定をクリックしてください。
echo 3.「管理の設定」を開き、「製品セキュリティ」内の「ノートン製品の改ざん対策」をオフにしてください。
echo 4.右下の「適用する」を押し、OKを押してください。
echo -----------------------------------------
echo;
pause
cls
color c
echo ------------注意------------
echo ここからNorton Cryptoの削除を行います。
echo 一度実行した場合、Nortonを再インストールしない限り、
echo Norton Cryptoを元に戻すことができなくなります。
echo よろしければ、5秒待ってから、何かキーを押してください。
echo ----------------------------
timeout 5 /NOBREAK > NUL
pause
cls
color f
taskkill /f /im NCrypt_Disable.exe > nul 2>&1
cd /d "C:\Program Files\Norton Security\Engine"
for /f "usebackq delims=" %%A in (`dir /s /b NCrypt_Disable.exe`) do set ADR=%%A
if not "%ADR%" == "" (
del /f "%ADR%"
)
echo;
echo 削除しました
echo もしエラーが出ている場合は手順に沿っていないか、既に削除されている可能性があります。
echo;
echo 最後に以下の手順を踏んでください。
echo -----------------------------------------
echo 1.NortonSecurityを開いてください。
echo 2.右上の設定をクリックしてください。
echo 3.「管理の設定」を開き、「製品セキュリティ」内の「ノートン製品の改ざん対策」をオンにしてください。
echo 4.右下の「適用する」を押してください。
echo -----------------------------------------
pause


