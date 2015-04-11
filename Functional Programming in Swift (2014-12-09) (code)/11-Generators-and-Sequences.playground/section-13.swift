func findPower(predicate: NSDecimalNumber -> Bool) 
              -> NSDecimalNumber {
    let g = PowerGenerator()
    while let x = g.next() {
        if predicate(x) {
            return x
        }
    }
    return 0;
}