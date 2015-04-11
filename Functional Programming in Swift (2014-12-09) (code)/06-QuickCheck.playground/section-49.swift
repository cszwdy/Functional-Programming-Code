extension Array: Smaller {
    func smaller() -> [T]? {
        if !self.isEmpty {
            return Array(dropFirst(self))
        }
        return nil
    }
}