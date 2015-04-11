func toNSStringEncoding(encoding: Encoding) -> NSStringEncoding {
    switch encoding {
        case Encoding.ASCII:
            return NSASCIIStringEncoding
        case Encoding.NEXTSTEP:
            return NSNEXTSTEPStringEncoding
        case Encoding.JapaneseEUC:
            return NSJapaneseEUCStringEncoding
        case Encoding.UTF8:
            return NSUTF8StringEncoding
    }
}