$scriptDriveLetter = (Get-Volume -FileSystemLabel REGIST).DriveLetter
$outputPath = "${scriptDriveLetter}:\"
if ($scriptDriveLetter.length -gt 0)
{
    wget https://trend-vision.ru/media/files/simple/productfile/FULL_Base.rar -OutFile ${env:TEMP}"\Full_Base.rar"
    & "C:\Program Files\Easy 7-Zip\7z" e ${env:TEMP}"\Full_Base.rar" -o"${outputPath}" -y
    Remove-Item ${env:TEMP}\Full_Base.rar -recurse
}