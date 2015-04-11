enum Diagram {
    case Prim(CGSize, Primitive)
    case Beside(Box<Diagram>, Box<Diagram>)
    case Below(Box<Diagram>, Box<Diagram>)
    case Attributed(Attribute, Box<Diagram>)
    case Align(Vector2D, Box<Diagram>)
}