@echo off
color f
whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
echo -----------------------------------------------------
echo Norton Crypto������/�L����/�폜�c�[�� Ver1.1 �����:Taku_147
echo -----------------------------------------------------
echo ���̃c�[���̎��s�ɂ͊Ǘ��Ҍ������K�v�ł��B
echo ���̃c�[�����E�N���b�N���āu�Ǘ��҂Ƃ��Ď��s�v�������Ă��������B
echo;
timeout 3 /NOBREAK > NUL
pause
exit
)
echo -----------------------------------------------------
echo Norton Crypto�L�����c�[�� Ver1.1 �����:Taku_147
echo -----------------------------------------------------
echo �Ή�OS:Windows10/11
echo ����͖������c�[���Ŗ���������Norton�̈Í��ʉݍ̌@�c�[����L��������c�[���ł��B
echo ���ӂ���ꍇ�́A�菇�ɏ]���đ����i�߂Ă��������B
echo;
pause
cls
echo �ŏ����������g�ő��삷��K�v������܂��B
echo -----------------------------------------
echo 1.NortonSecurity���J���Ă��������B
echo 2.�E��̐ݒ���N���b�N���Ă��������B
echo 3.�u�Ǘ��̐ݒ�v���J���A�u���i�Z�L�����e�B�v���́u�m�[�g�����i�̉�����΍�v���I�t�ɂ��Ă��������B
echo 4.�E���́u�K�p����v�������AOK�������Ă��������B
echo -----------------------------------------
echo;
pause
cls
echo ------------����------------
echo ��������Norton Crypto�̗L�������s���܂��B
echo ��낵����΁A3�b�҂��Ă���A�����L�[�������Ă��������B
echo ----------------------------
timeout 3 /NOBREAK > NUL
pause
cls
color f
taskkill /f /im NCrypt_Disable.exe > nul 2>&1
cd /d "C:\Program Files\Norton Security\Engine"
for /f "usebackq delims=" %%A in (`dir /s /b NCrypt_Disable.exe`) do set ADR=%%A
ren "%ADR%" NCrypt.exe
echo;
echo �L�������܂���
echo �����G���[���o�Ă���ꍇ�͎菇�ɉ����Ă��Ȃ����A���ɗL�����A�폜����Ă���\��������܂��B
echo;
echo �Ō�Ɉȉ��̎菇�𓥂�ł��������B
echo -----------------------------------------
echo 1.NortonSecurity���J���Ă��������B
echo 2.�E��̐ݒ���N���b�N���Ă��������B
echo 3.�u�Ǘ��̐ݒ�v���J���A�u���i�Z�L�����e�B�v���́u�m�[�g�����i�̉�����΍�v���I���ɂ��Ă��������B
echo 4.�E���́u�K�p����v�������Ă��������B
echo -----------------------------------------
pause


