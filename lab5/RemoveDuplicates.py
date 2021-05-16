def RemDupSet(listOfItems):
    outputList = set(listOfItems)
    outputList = list(outputList)
    return outputList

def RemDupLoop(listOfItems):
    outputList = []
    for i in listOfItems:
        if i not in outputList:
            outputList.append(i)
    return outputList


inputText = input("Input space separated entries: ")
temp = list(inputText.split(" "))
print('RemDupSet : ', *RemDupSet(temp))
print('RemDupLoop: ', *RemDupLoop(temp))
