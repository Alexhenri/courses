
import UIKit

var str = "Hello, playground"

// Learning loops

var i = 0

while i < 10 {
   print(i)
   i += 1
}

i = 1
while i <= 20 {
    print (7*i)
    i += 1
}

var array = [7, 9, 14, 0, 129, 323]

i = 0

while i < array.count {
    array[i] += 1
    i += 1
}

print (array)

for test in array {
    print(test)
}

for (index, value) in array.enumerated() {
    array[index] = value / 2
}
print(array)




