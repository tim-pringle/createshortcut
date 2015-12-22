function New-Shortcut
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true,Position=0)] $Path,
        [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true,Position=1)] $TargetPath,
        [Parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true,Position=2)] $IconIndex = 0,
        [Parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true,Position=3)] $IconFile = $TargetPath
    )

    
    Process
    {
     $writer = New-Object -TypeName System.IO.StreamWriter -ArgumentList $Path
     $TargetPath = $TargetPath -replace '\\','/'
     $IconFile =  $IconFile -replace '\\','/'
     $writer.WriteLine("[InternetShortcut]")
     $writer.WriteLine("URL=file:///" + $TargetPath)
     $writer.WriteLine("IconIndex=$IconIndex")
     $writer.WriteLine("IconFile=" + $IconFile)
     $writer.Flush()
     $write.Close()
    }
    
}
