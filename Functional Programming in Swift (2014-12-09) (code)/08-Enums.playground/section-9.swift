func localizedEncodingName(encoding: Encoding) -> String {
    return String.localizedNameOfStringEncoding(
            toNSStringEncoding(encoding))
}