func pdf(diagram: Diagram, width: CGFloat) -> NSData {
    let unitSize = diagram.size
    let height = width * (unitSize.height/unitSize.width)
    let v: Draw = Draw(frame: NSMakeRect(0, 0, width, height), 
                       diagram: diagram)
    return v.dataWithPDFInsideRect(v.bounds)
}