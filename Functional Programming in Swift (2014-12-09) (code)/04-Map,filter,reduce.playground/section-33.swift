func prettyPrintArray(xs: [String]) -> String {
    var result: String = "Entries in the array xs:\n"
    for x in xs {
        result = "  " + result + x + "\n"
    }
    return result
}