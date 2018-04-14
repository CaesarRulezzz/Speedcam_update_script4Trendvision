$scriptDriveLetter = (Get-Volume -FileSystemLabel REGIST).DriveLetter
$outputPath = "${scriptDriveLetter}:\"
wget https://trend-vision.ru/media/files/simple/productfile/FULL_Base.rar -OutFile "D:\Full_base.rar"
& "C:\Program Files\Easy 7-Zip\7z" e "D:\Full_Base.rar" -o"${outputPath}" -y
Remove-Item D:\Full_Base.rar -recurse