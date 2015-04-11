func rect(#width: CGFloat, #height: CGFloat) -> Diagram {
    return Diagram.Prim(CGSizeMake(width, height), .Rectangle)
}

func circle(#diameter: CGFloat) -> Diagram {
    return Diagram.Prim(CGSizeMake(diameter, diameter), .Ellipse)
}

func text(#width: CGFloat, 
          #height: CGFloat, text theText: String) -> Diagram {
          
    return Diagram.Prim(CGSizeMake(width, height), .Text(theText))
}

func square(#side: CGFloat) -> Diagram { 
    return rect(width: side, height: side) 
}