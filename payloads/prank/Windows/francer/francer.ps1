$imageUrl = "https://raw.githubusercontent.com/P-ict0/BadUSB-Scripts/refs/heads/main/payloads/prank/Windows/francer/france.png?raw=true"
$outputPath = Join-Path -Path $env:TEMP -ChildPath 'france.png'

Invoke-WebRequest -Uri $imageUrl -OutFile $outputPath

$code = @'
using System.Runtime.InteropServices;
namespace Win32{
    
     public class Wallpaper{
        [DllImport("user32.dll", CharSet=CharSet.Auto)]
         static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ;
         
         public static void SetWallpaper(string thePath){
            SystemParametersInfo(20,0,thePath,3); 
         }
    }
 } 
'@

add-type $code
[Win32.Wallpaper]::SetWallpaper($outputPath)

Remove-Item -Path $outputPath
