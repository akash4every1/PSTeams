function Convert-FromColor {
    [CmdletBinding()]
    param(
        [nullable[System.Drawing.Color]]$Color
    )
    if ($Color -ne $null) {
        $Value = $Color.R, $Color.G, $Color.B
        foreach ($arg in $Value) {
            $hexval = $hexval + [Convert]::ToString($arg, 16).ToUpper()
        }
        return "#$($hexval)" # .Substring(2)
    } else { '' }
}