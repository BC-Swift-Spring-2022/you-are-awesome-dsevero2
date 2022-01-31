import PlaygroundSupport

let awesomeMessage = "You Are Awesome!"
let greatMessage = "You Are Great!"
let bombMessage = "You Are Da Bomb!"

var messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "Fabuolous?, That's You!"]

print(messages)
print(messages[1])
print(messages[0])
print(messages[3])
print(messages.count)
print(messages[messages.count - 1])
let removedMessage = messages.remove(at: messages.count-1)
print(removedMessage)
print(messages)
messages.append("You Are A Legend!")
print(messages)
messages = messages + ["You Swifty!"]
print(messages)
let newMessages = ["You Make Me Smile!", "I Think You Are Magic"]
messages = messages + newMessages
print(messages)
