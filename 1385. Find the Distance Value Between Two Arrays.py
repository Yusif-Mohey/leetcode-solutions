def sayed(func):
    def wrapper():
        print("Before")
        func()
        print("After")

    return wrapper


@sayed
def say_hello():
    print("Hello")


say_hello()
