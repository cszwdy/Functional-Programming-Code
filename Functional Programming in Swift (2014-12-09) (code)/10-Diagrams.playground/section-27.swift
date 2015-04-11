        case .Prim(let size, .Text(let text)):
            let frame = fit(Vector2D(x: 0.5, y: 0.5), size, bounds)
            let font = NSFont.systemFontOfSize(12)
            let attributes = [NSFontAttributeName: font]
            let attributedText = NSAttributedString(
                    string: text, attributes: attributes)
            attributedText.drawInRect(frame)