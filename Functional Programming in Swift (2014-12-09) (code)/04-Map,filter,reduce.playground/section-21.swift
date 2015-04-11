func getSwiftFiles2(files: [String]) -> [String] {
    return filter(files) { file in file.hasSuffix(".swift") }
}