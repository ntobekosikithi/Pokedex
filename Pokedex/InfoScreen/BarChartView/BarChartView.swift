//
//  BarChartView.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/26.
//

import Foundation
import UIKit

class BarChartView: UIView {

    var dataPoints: [String] = []
    var values: [CGFloat] = []
    var color: UIColor?

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }

        let barWidth: CGFloat = super.frame.size.width / CGFloat(dataPoints.count) - 15
        let spacing: CGFloat = 12.0
        let chartHeight = rect.height - 40.0
        let maxValue = values.max() ?? 1.0

        for (index, value) in values.enumerated() {
            let x = spacing + CGFloat(index) * (barWidth + spacing)
            let barHeight = (value / maxValue) * chartHeight

            let barRect = CGRect(x: x, y: rect.height - barHeight - 20.0, width: barWidth, height: barHeight)
            
            if let color = self.color {
                context.setFillColor(color.cgColor)
            }else{
                context.setFillColor(UIColor.blue.cgColor)
            }
            
            context.fill(barRect)

            let labelRect = CGRect(x: x, y: rect.height - 20.0, width: barWidth, height: 20.0)
            drawText(dataPoints[index], in: labelRect)
        }
    }

    private func drawText(_ text: String, in rect: CGRect) {
        let style = NSMutableParagraphStyle()
        style.alignment = .center

        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 8.0),
            .foregroundColor: UIColor.black,
            .paragraphStyle: style
        ]

        let label = NSAttributedString(string: text, attributes: attributes)
        label.draw(in: rect)
    }
}
