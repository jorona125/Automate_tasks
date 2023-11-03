import random


def generate_passowrd():
    minium_length = 15
    char= "abcdefghijklmnopqrstuvwxyz"
    char_upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    num = "123456789"
    special_char = "!@#$%^&*()_+"
    password= ""

    while len(password) < minium_length:
        password += random.choice(char)
        password += random.choice(char_upper)
        password += random.choice(num)
        password += random.choice(special_char)

    password_list = list(password)
    random.shuffle(password_list)
    password = "".join(password_list)


    print(password)    

generate_passowrd()
