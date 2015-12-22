
     $writer = New-Object -TypeName System.IO.StreamWriter -ArgumentList 'D:\Temp\MyNewShortcut.url'
     $TargetPath = 'C:/Windows/Notepad.exe'
     $IconFile =  $IconFile -replace '\\','/'
     $writer.WriteLine("[InternetShortcut]")
     $writer.WriteLine("URL=file:///" + $TargetPath)
     $writer.WriteLine("IconIndex=0")
     $writer.WriteLine("IconFile=" + $TargetPath)
     $writer.Flush()
     $writer.Close()
