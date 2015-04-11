class Draw: NSView {
    let diagram: Diagram

    init(frame frameRect: NSRect, diagram: Diagram) {
        self.diagram = diagram
        super.init(frame:frameRect)
    }

    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }

    override func drawRect(dirtyRect: NSRect) {
        if let context = NSGraphicsContext.currentContext() {
            draw(context.cgContext, self.bounds, diagram)
        }
    }
}