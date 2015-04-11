switch readFile("/Users/wouter/fpinswift/README.md", Encoding.ASCII) {
    case let ReadFileResult.Success(contents):
        println("File successfully opened..")
    case let ReadFileResult.Failure(error):
        println("Failed to open file. Error code: \(error.code)")
}