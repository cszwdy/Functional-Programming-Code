func readFile1(path: String, encoding: Encoding) -> String? {
    var maybeError: NSError? = nil
    let maybeString = NSString(contentsOfFile: path,
                      encoding: toNSStringEncoding(encoding), 
                      error: &maybeError)
    return maybeString
}