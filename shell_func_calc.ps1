function Add-Numbers {
    $adding_a = Read-Host -Prompt "Enter the first number here"
    $adding_b = Read-Host -Prompt "Enter the second number here"
    $sum = [int]$adding_a + [int]$adding_b
    Start-Sleep -Milliseconds 100  
    Write-Host "The sum of two numbers is $sum"
}

function Subtract-Numbers {
    $sub_a = Read-Host -Prompt "Enter the first number here"
    $sub_b = Read-Host -Prompt "Enter the second number here"
    $difference = [int]$sub_a - [int]$sub_b
    Start-Sleep -Milliseconds 100  
    Write-Host "The subtraction of two numbers  is $difference"
}

function Multiply-Numbers {
    $mul_a = Read-Host -Prompt "Enter the first number here"
    $mul_b = Read-Host -Prompt "Enter the second number here"
    $product = [int]$mul_a * [int]$mul_b
    Start-Sleep -Milliseconds 100  
    Write-Host "The multiplication of two numbers is $product"
}

function Divide-Numbers {
    $div_a = Read-Host -Prompt "Enter the first number here"
    $div_b = Read-Host -Prompt "Enter the second number here"
    if ($div_b -eq 0) {
        Write-Host "Error: Division by zero is not allowed." -ForegroundColor Red
    } else {
        $quotient = [int]$div_a / [int]$div_b
        Start-Sleep -Milliseconds 100 
        Write-Host "The division of two numbers is $quotient"
    }
}

function Modulus-Numbers {
    $mod_a = Read-Host -Prompt "Enter the first number here"
    $mod_b = Read-Host -Prompt "Enter the second number here"
    $modulus = [int]$mod_a % [int]$mod_b
    Start-Sleep -Milliseconds 100  
    Write-Host "The modulus of two numbers is $modulus"
}

function Ask-User {
    while ($true) {
        try {
            $user = Read-Host -Prompt "Hey, what type of mathematical operation do you want to perform? Type here"
            switch ($user) {
                "add" { Add-Numbers }
                "sub" { Subtract-Numbers }
                "mul" { Multiply-Numbers }
                "div" { Divide-Numbers }
                "modulas" { Modulus-Numbers }
                default { Write-Host "Invalid operation" -ForegroundColor Yellow }
            }
        } catch {
            Write-Host $_.Exception.Message -ForegroundColor Red
        }
    }
}

Ask-User

