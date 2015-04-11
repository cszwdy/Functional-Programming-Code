class CountdownGenerator: GeneratorType {
    typealias Element = Int
    
    var element: Element
    
    init<T>(array: [T]) {
        self.element = array.count - 1
    }

    func next() -> Element? {
        return self.element < 0 ? nil : element--
    }
}