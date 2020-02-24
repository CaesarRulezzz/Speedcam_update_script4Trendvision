$type = $args[0]
$7zip_path = "C:\Program Files\Easy 7-Zip\7z"
$drive_label = "REGIST"

if ($type -eq "trendvision")
{
    # trendvision
    $filename = "Full_Base.rar"
    $download_link = "https://trend-vision.ru/media/files/simple/productfile/FULL_Base.rar"
}
elseif ($type -eq "showme")
{
    # showme
    #$download_link = "https://speedcam.online/rd.online/shome/shome7new/combo_database.zip"
    $download_link = "https://speedcam.online/rd.online/shome/shome3/combo_database.zip"
    $filename = "Full_Base.zip"
}
else {
    Write-Output "No parameter!"
    Exit-PSSession
}

$scriptDriveLetter = (Get-Volume -FileSystemLabel $drive_label).DriveLetter
$outputPath = "${scriptDriveLetter}:\"
if ($scriptDriveLetter.length -gt 0)
{
    Write-Host "Downloading from " $download_link " to " ${env:TEMP}"\"$filename
    Invoke-WebRequest $download_link -OutFile ${env:TEMP}"\"$filename
    Write-Host "Extracting from " ${env:TEMP}"\"$filename " to " ${outputPath}
    & $7zip_path e ${env:TEMP}"\"$filename -o"${outputPath}" -y
    Write-Host "Removing temp file"
    Remove-Item ${env:TEMP}\$filename -recurse
}
else {
    Write-Output "No drive found!"
}