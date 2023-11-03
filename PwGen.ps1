function GenPasswd {
    $minium_length = 15
    $char= "abcdefghijklmnopqrstuvwxyz"
    $char_upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    $num = "123456789"
    $special_char = "!@#$%^&*()_+"
    $password= ""

    while ($password.Length -lt $minium_length) {
        $password += ( $char.ToCharArray() | Get-Random )
        $password += ( $char_upper.ToCharArray() | Get-Random )
        $password += ( $num.ToCharArray() | Get-Random )
        $password += ( $special_char.ToCharArray() | Get-Random )
                
    }
    $password = $password.Substring(0,15)
    
   
    return $password | Get-Random -Shuffle
        
}

GenPasswd
