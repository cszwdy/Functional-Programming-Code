        case .Below(let top, let bottom):
            let t = top.unbox
            let b = bottom.unbox
            let (lFrame, rFrame) = splitVertical(
                    bounds, b.size/diagram.size)
            draw(context, lFrame, b)
            draw(context, rFrame, t)