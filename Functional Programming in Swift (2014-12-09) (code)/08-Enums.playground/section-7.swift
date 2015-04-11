func createEncoding(enc: NSStringEncoding) -> Encoding? {
    switch enc {
        case NSASCIIStringEncoding:
            return Encoding.ASCII
        case NSNEXTSTEPStringEncoding:
            return Encoding.NEXTSTEP
        case NSJapaneseEUCStringEncoding:
            return Encoding.JapaneseEUC
        case NSUTF8StringEncoding:
            return Encoding.UTF8
        default:
            return nil
    }
}