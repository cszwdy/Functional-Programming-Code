extension CGSize: Arbitrary {
    func smaller() -> CGSize? {
        return nil
    }
    
    static func arbitrary() -> CGSize {
        return CGSizeMake(CGFloat.arbitrary(), CGFloat.arbitrary())
    }
}

extension CGFloat: Arbitrary {
    func smaller() -> CGFloat? {
        return nil
    }
    
    static func arbitrary() -> CGFloat {
        let random: CGFloat = CGFloat(arc4random())
        let maxUint = CGFloat(UInt32.max)
        return 10000 * ((random - maxUint/2) / maxUint)
    }
}