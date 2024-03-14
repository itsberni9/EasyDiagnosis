@echo off
TITLE EasyDiagnosis_v1 - %USERNAME% 
MODE con:cols=80 lines=40

:inicio
SET var=0
cls
echo  %DATE% ^| %TIME% 

echo --------------------------------------------------------------------------
echo "        ______      _    _____            _  _           _  ___         "
echo "       |.-----.|   | |__|___ / _ __ _ __ | || |  _ __ __| |/ _ \ ___    "  
echo "       ||x . x||   | '_ \ |_ \| '__| '_ \| || |_| '__/ _` | | | / __|   "
echo "       ||_.-._||   | |_) |__) | |  | | | |__   _| | | (_| | |_| \__ \   "
echo "       `--)-(--`   |_.__/____/|_|  |_| |_|  |_| |_|  \__,_|\___/|___/   "
echo "    __[=== o]___                                                        "
echo "   |:::::::::::|\                                                       "
echo "   `-=========-`()                                                      "

::EasyDiagnosis_v1 © Alberto  Bernardos 01/03/2024
::Todos los derechos reservados   
                                                                                                                                               
echo #General  ----------------------------------------------------------------
echo.
echo  1    Informacion del Sistema  
echo  2    Actualizaciones Windows
echo  3    IPConfig
echo.
echo #Herramiendas de limpieza   ----------------------------------------------
echo.
echo  4    Liberador Espacio en :C 
echo  5    Eliminar archivos temporales
echo  6    Comprobador archivos de sistema
echo  7    Eliminar archivos prefetch (Admin)
echo.
echo #Varios   ----------------------------------------------------------------
echo.
echo  8    Panel de Control
echo  9    Conexiones de Red 
echo  10   Lanzar Test de Velocidad
echo  11   Aplicaciones Inicio Windows 
echo  12   Acceso a Trabajo / Escuela
echo  13   Agregar o Quitar Programas
echo  14   Outlook Modo Seguro
echo  15   Abrir Adm. de Dispositivos
echo  16   Visor de Eventos del Sistema
echo  17   Config Pantalla de bloqueo
echo  18   Opciones de energia
echo  19   Opciones de privacidad
echo --------------------------------------------------------------------------
echo  Q    Salir
echo.                                                                                                        

SET /p var= ^> (Q) SALIR - Seleccione una opcion [1-20]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto op6
if "%var%"=="7" goto op7
if "%var%"=="8" goto op8
if "%var%"=="9" goto op9
if "%var%"=="10" goto op10
if "%var%"=="11" goto op11
if "%var%"=="12" goto op12
if "%var%"=="13" goto op13
if "%var%"=="14" goto op14
if "%var%"=="15" goto op15
if "%var%"=="16" goto op16
if "%var%"=="17" goto op17
if "%var%"=="18" goto op18
if "%var%"=="19" goto op19
if "%var%"=="q" goto salir
if "%var%"=="Q" goto salir

::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
    echo. Has elegido la opcion No. 1 Informacion del Sistema
    echo.
        msinfo32
    echo.
    pause
    goto:inicio

:op2
    echo.
    echo. Has elegido la opcion No. 2 Abrir Panel de Control
    echo.
		start ms-settings:windowsupdate
    echo.
    pause
    goto:inicio

:op3
    echo.
    echo. Has elegido la opcion No. 3 IPConfig
    echo.
        ipconfig
    echo.
    pause
    goto:inicio
  
:op4
    echo.
    echo. Has elegido la opcion No. 4 Liberador de Espacio en disco
    echo.
        cleanmgr/lowdisk/dc
    echo.
    pause
    goto:inicio

:op5
    echo.
    echo. Has elegido la opcion No. 5 Eliminar Temporales
    echo.
        del %temp%\*.*/s/q
    echo.
    pause
    goto:inicio
	
:op6
    echo.
    echo. Has elegido la opcion No. 6 Comprobado archivos de sistema
    echo.
    sfc /scannow
    echo.
    pause
    goto:inicio
:op7
    echo.
    echo. Has elegido la opcion No. Eliminar prefetch
    echo.
    del C:\Windows\prefetch\*.*/s/q
    echo.
    pause
    goto:inicio
:op8
    echo.
    echo. Has elegido la opcion No. 8 Panel de Control
    echo.
		control panel
    echo.
    pause
    goto:inicio
:op9
    echo.
    echo. Has elegido la opcion No. 9 Conexiones de Red
    echo.
		ncpa.cpl
    echo.
    pause
    goto:inicio
:op10
    echo.
    echo. Has elegido la opcion No. 10 Test de Velocidad
    echo.
    start msedge www.testdevelocidad.es
    echo.
    pause
    goto:inicio
:op11
    echo.
    echo. Has elegido la opcion No. 11 Aplicaciones de Inicio
    start ms-settings:startupapps   
    echo.
    pause
    goto:inicio
:op12
    echo.
    echo. Has elegido la opcion No. 12 Acceso a Trabajo / Escuela
    echo.
    start ms-settings:workplace
    echo.
    pause
    goto:inicio
:op13
    echo.
    echo. Has elegido la opcion No. Acceso Programas
    echo.
    start ms-settings:appsfeatures
    echo.
    pause
    goto:inicio
:op14
    echo.
    echo. Has elegido la opcion No. 14 Arrancar Outlook Modo Seguro
    echo.
    start Outlook.exe /safe
    echo.
    pause
    goto:inicio
:op15
    echo.
    echo. Has elegido la opcion No. 15 Administrador de Dispositivos
    echo.
	compmgmt.msc
    echo.
    pause
    goto:inicio
:op16
    echo.
    echo. Has elegido la opcion No. 16 Visor de Eventos del Sistema
    echo.
   eventvwr.msc
    echo.
    pause
    goto:inicio
:op17
    echo.
    echo. Has elegido la opcion No. 17  Pantalla de bloqueo
    echo.
    start ms-settings:lockscreen    
    echo.
    pause
    goto:inicio
:op18
    echo.
    echo. Has elegido la opcion No. 18 Opciones de energia
    echo.
    powercfg.cpl    
    echo.
    pause
    goto:inicio
:op19
    echo.
    echo. Has elegido la opcion No. 19 Opciones de privacidad
    echo.
    start ms-settings:privacy    
    echo.
    pause
    goto:inicio

:salir
    @cls&exit