let reverseElements = map(ReverseSequence(array: xs)) { i in xs[i] }
for x in reverseElements {
    println("Element is \(x)")
}