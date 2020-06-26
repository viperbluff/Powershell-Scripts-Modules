Function Start-WMIprocess 

{

    [cmdletbinding (supportsShouldprocess=$True)]
    param (
    [parameter()]
    $b
    )

    Write-Verbose "starting WMI method" 
   
    Invoke-WmiMethod -Class Win32_process -Name Create -ArgumentList “$b"
    

    

}

Function start-anyprocess

{

    
    [cmdletbinding (supportsShouldprocess=$True)]
    param(
    [parameter(Mandatory=$True)]

    $c 

    )

    Write-Verbose "Starting given process"
    Invoke-Command -ScriptBlock {start-process $c} 
    
}

 