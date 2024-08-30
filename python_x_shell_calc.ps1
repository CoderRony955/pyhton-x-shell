$pythonCode = @"
import asyncio

async def add():        
    adding_a = int(input('Enter the first number here: '))
    adding_b = int(input('Enter the second number here: '))
    await asyncio.sleep(0.1)  # Simulate async behavior
    print(f'The sum of two numbers is {adding_a + adding_b}')
    
async def sub():
    sub_a = int(input('Enter the first number here: '))
    sub_b = int(input('Enter the second number here: '))
    await asyncio.sleep(0.1)  # Simulate async behavior
    print(f'The subtraction of two numbers is {sub_a - sub_b}')

async def mul():
    mul_a = int(input('Enter the first number here: '))
    mul_b = int(input('Enter the second number here: '))
    await asyncio.sleep(0.1)  # Simulate async behavior
    print(f'The multiplication of two numbers is {mul_a * mul_b}')

async def divide():
    div_a = int(input('Enter the first number here: '))
    div_b = int(input('Enter the second number here: '))
    await asyncio.sleep(0.1)  # Simulate async behavior
    print(f'The division of two numbers is {div_a / div_b}')

async def modulas():
    mod_a = int(input('Enter the first number here: '))
    mod_b = int(input('Enter the second number here: '))
    await asyncio.sleep(0.1)  # Simulate async behavior
    print(f'The modulas of two numbers is {mod_a % mod_b}')
    
async def ask_user():
    while True:
        try:
            user = input('Hey, what type of mathematical operation do you want to perform? Type here: ')
            if user == 'add':
                await add()
            elif user == 'sub':
                await sub()
            elif user == 'mul':
                await mul()   
            elif user == 'div':
                await divide()
            elif user == 'modulas':
                await modulas()
            else:
                print('Invalid operation')
        except Exception as e:
            print(e)

async def main():
    await ask_user()
    
if __name__ == '__main__':
    asyncio.run(main())
"@


$pythonFilePath = "temp_script.py"
[System.IO.File]::WriteAllText($pythonFilePath, $pythonCode, [System.Text.Encoding]::UTF8)

python $pythonFilePath


Remove-Item $pythonFilePath
