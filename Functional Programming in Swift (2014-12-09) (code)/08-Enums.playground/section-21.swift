func writeFile(contents: String, 
               path: String, encoding: Encoding) -> Bool {
               
    return contents.writeToFile(path, atomically: false, 
            encoding: toNSStringEncoding(encoding), error: nil)
}