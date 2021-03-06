extension Array {
    var decompose : (head: T, tail: [T])? {
      return (count > 0) ? (self[0], Array(self[1..<count])) : nil
    }
}