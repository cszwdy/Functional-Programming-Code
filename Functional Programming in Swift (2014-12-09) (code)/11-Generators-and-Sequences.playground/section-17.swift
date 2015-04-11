class FileLinesGenerator: GeneratorType {
    typealias Element = String
    
    var lines: [String]
    
    init(filename: String) {
        if let contents = String(contentsOfFile: filename,
                                 encoding: NSUTF8StringEncoding,
                                 error: nil) {
            let newLine = NSCharacterSet.newlineCharacterSet()
            lines = contents
                    .componentsSeparatedByCharactersInSet(newLine)
        } else {
            lines = []
        }
    }
    
    func next() -> Element? {
        if let nextLine = lines.first {
            lines.removeAtIndex(0)
            return nextLine
        } else {
            return nil
        }
    }
    
}