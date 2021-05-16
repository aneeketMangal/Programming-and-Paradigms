def reverseString(inputString):
    words = list(inputString.split())
    words.reverse()
    print("Reversed string: ", end = " ")
    return words

inputString = input("Input string   :  ")
print(*reverseString(inputString))