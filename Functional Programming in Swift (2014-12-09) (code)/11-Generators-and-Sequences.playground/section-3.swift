func map<A, B>(s: SequenceOf<A>, f: A -> B) -> SequenceOf<B> {
    return SequenceOf { map(s.generate(), f) }
}

extension Int: Smaller {
    func smaller() -> GeneratorOf<Int> {
        let result: Int? = self < 0 ? nil : self.predecessor()
        return one(result)
    }
}