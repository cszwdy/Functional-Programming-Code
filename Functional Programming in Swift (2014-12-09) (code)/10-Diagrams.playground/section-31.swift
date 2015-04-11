        case .Beside(let left, let right):
            let l = left.unbox
            let r = right.unbox
            let (lFrame, rFrame) = splitHorizontal(
                    bounds, l.size/diagram.size)
            draw(context, lFrame, l)
            draw(context, rFrame, r)