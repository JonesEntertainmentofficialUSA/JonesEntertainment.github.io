#Final Variable to be used in the "end" function.
cart_cost=0.00
#List variables for the Cart.
shop1="."
shop2="."
shop3="."
shop4="."
shop5="."
#Functions for store function usage.

def bye():
    print("██████████████████████████████████████████")
    print("█Thanks for shopping with the CHRISTORE2!█")
    print("██████████████████████████████████████████")\
    input()


def end():
    cart=[shop1, shop2, shop3, shop4, shop5]
    print(cart[0] + "" + str(apple_price))
    print(" +")
    print(cart[1] + "" + str(milk_price))
    print(" +")
    print(cart[2] + "" + str(soda_price))
    print(" +")
    print(cart[3] + "" + str(cookies_price))
    print(" +")
    print(cart[4] + "" + str(tv_dinner_price))
    print("███████████████████████████████████")
    print("$" + str(cart_cost) + " - Is your total!")
    print("███████████████████████████████████")
    choice=input("Continue shopping? - [Y/N]")
    if choice == y:
        store()
    else:
        bye()

def apple(a): 
    print("                Buy apple?                    ")
    print("██████████████████████████████████████████████")
    print("Your Balance - $" + str(apple_price))
    print("                                                  ")
    choice=input("  (1)BUY      (2)NO,I'M GOOD.   ")
    if choice == 1:
       print("APPLE HAS BEEN ADDED TO CART!")
       appletotal=appletotal+1
       shop1="Apple x" + str(appletotal)
       choice=input("Goto Check out? [Y/N]")
       if choice == "y":
           end()
       else:
           return cart_cost + a
           store()
    else:
        store()
def milk(b):
    print("                Buy milk?                    ")
    print("██████████████████████████████████████████████")
    print("Your Balance - $" + str(milk_price))
    print("                                                  ")
    choice=input("  (1)BUY      (2)NO,I'M GOOD.   ")
    if choice == 1:
       print("MILK HAS BEEN ADDED TO CART!")
       milktotal=milktotal+1
       shop2="Milk x" + str(milktotal)
       choice=input("Goto Check out? [Y/N]")
       if choice == "y":
           end()
       else:
           return cart_cost + b
           store()
    else:
        store()
def soda(c):
    print("                Buy Soda?                    ")
    print("██████████████████████████████████████████████")
    print("Your Balance - $" + str(soda_price))
    print("                                                  ")
    choice=input("  (1)BUY      (2)NO,I'M GOOD.   ")
    if choice == 1:
       print("SODA HAS BEEN ADDED TO CART!")
       milktotal=milktotal+1
       shop3="Soda x" + str(sodatotal)
       choice=input("Goto Check out? [Y/N]")
       if choice == "y":
           end()
       else:
           return cart_cost + b
           store()
    else:
        store()
def cookie(d):

def tv_dinner(e):

def store():
    #Set as local variables.
    apple_price=1.50
    milk_price=2.50
    soda_price=2.75
    cookies_price=0.75
    tv_dinner_price=3.25
    print("████████████████████████████████████")
    print("█ Welcome to the Christore of 2025!█")
    print("█       What will you buy?         █")
    print("████████████████████████████████████")
    print("                                    ")
    print("🍎   (1) APPLE - "+ str(apple_price))
    print("🥛   (2) MILK - "+ str(milk_price))
    print("🥤   (3) SODA - "+ str(soda_price))
    print("🍪   (4) COOKIE - "+ str(cookies_price))
    print("📺🍽  (5) TV DINNER - "+ str(tv_dinner_price))
    print("👋   (6) EXIT CHRISTORE2 - " + str(cart_cost))
    print("████████████████████████████████████")
    choice=input("CHOICE: ")
    if choice == 1:
        apple(apple_price)
    elif choice == 2:
        milk(milk_price)
    elif choice == 3:
        soda(soda_price)
    elif choice == 4:
        cookie(cookies_price)
    elif choice == 5:
        tv_dinner(tv_dinner_price)
    elif choice == 6:
        end()
    else:
        print("Choose a number from 1-6")
        store()
store()
bye()
