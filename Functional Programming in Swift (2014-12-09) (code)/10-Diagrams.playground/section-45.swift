extension Diagram {
    func fill(color: NSColor) -> Diagram {
        return Diagram.Attributed(Attribute.FillColor(color), 
                                  Box(self))
    }
    
    func alignTop() -> Diagram {
        return Diagram.Align(Vector2D(x: 0.5, y: 1), Box(self))
    }
    
    func alignBottom() -> Diagram {
        return Diagram.Align(Vector2D(x:0.5, y: 0), Box(self))
    }
}