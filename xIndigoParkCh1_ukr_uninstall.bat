@echo off

:: Змінні
set "base_dir=%~dp0"
set "bat_file_name=xIndigoParkCh1_ukr_uninstall.bat"

set "video_file_name=Chapter1_Opening.mp4"
set "video_file_path=RaccoonCh1\Content\Movies\uk"

set "pak_file_name=xRaccoonCh1-Windows-Ukr_P.pak"
set "pak_file=RaccoonCh1\Content\Paks\xRaccoonCh1-Windows-Ukr_P.pak"
set "ucas_file_name=xRaccoonCh1-Windows-Ukr_P.ucas"
set "ucas_file=RaccoonCh1\Content\Paks\xRaccoonCh1-Windows-Ukr_P.ucas"
set "utoc_file_name=xRaccoonCh1-Windows-Ukr_P.utoc"
set "utoc_file=RaccoonCh1\Content\Paks\xRaccoonCh1-Windows-Ukr_P.utoc"

:: Видалення теки з mp4-файлом(ами) (інтро)
if exist "%base_dir%%video_file_path%" (
    rmdir /s /q "%base_dir%%video_file_path%"
    echo "V: "%video_file_name%" file successfully deleted"
) else (
    echo "X: "%video_file_name%" file not found"
)

:: Видалення pak-файлу
if exist "%base_dir%%pak_file%" (
    del /f /q "%base_dir%%pak_file%"
    echo "V: "%pak_file_name%" file successfully deleted"
) else (
    echo "X: "%pak_file_name%" file not found"
)

:: Видалення ucas-файлу
if exist "%base_dir%%ucas_file%" (
    del /f /q "%base_dir%%ucas_file%"
    echo "V: "%ucas_file_name%" file successfully deleted"
) else (
    echo "X: "%ucas_file_name%" file not found"
)

:: Видалення utoc-файлу
if exist "%base_dir%%utoc_file%" (
    del /f /q "%base_dir%%utoc_file%"
    echo "V: "%utoc_file_name%" file successfully deleted"
) else (
    echo "X: "%utoc_file_name%" file not found"
)

:: Самовидалення bat-файлу
if exist "%base_dir%%bat_file_name%" (
    del /f /q "%base_dir%%bat_file_name%"
    echo "V: "%bat_file_name%" file successfully deleted"
) else (
    echo "X: What the fuck??? "%bat_file_name%" file not found"
)

pause
