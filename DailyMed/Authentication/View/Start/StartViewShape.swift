//
//  StartViewShape.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 12/05/25.
//

import SwiftUI

struct StartViewShape: View {
    var body: some View {
        ShapeStartView()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
}

struct ShapeStartView: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
                    let width = rect.maxX
                    let height = rect.maxY
                    let arcHeight = height * 0.4
                    let section = width / 3

                    path.move(to: CGPoint(x: 0, y: 0))

                    // Arc 1 (0 → 1)
                    path.addCurve(
                        to: CGPoint(x: section, y: arcHeight),
                        control1: CGPoint(x: section * 0.33, y: 0),
                        control2: CGPoint(x: section * 0.66, y: arcHeight)
                    )

                    // Arc 2 (1 → 2)
                    path.addCurve(
                        to: CGPoint(x: section * 2, y: 0),
                        control1: CGPoint(x: section * 1.33, y: arcHeight),
                        control2: CGPoint(x: section * 1.66, y: 0)
                    )

                    // Arc 3 (2 → 3)
                    path.addCurve(
                        to: CGPoint(x: section * 3, y: arcHeight),
                        control1: CGPoint(x: section * 2.33, y: 0),
                        control2: CGPoint(x: section * 2.66, y: arcHeight)
                    )

                    //bottom
                    path.addLine(to: CGPoint(x: width, y: height))
                    path.addLine(to: CGPoint(x: 0, y: height))
                    path.closeSubpath()
                }
    }
}

#Preview {
    StartViewShape()
}
