func draw(context: CGContextRef, bounds: CGRect, diagram: Diagram) {
    switch diagram {
        case .Prim(let size, .Ellipse):
            let frame = fit(Vector2D(x: 0.5, y: 0.5), size, bounds)
            CGContextFillEllipseInRect(context, frame)