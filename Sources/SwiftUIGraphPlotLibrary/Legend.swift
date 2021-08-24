//
//  File.swift
//  
//
//  Created by ikost on 24.08.21.
//

import Foundation
import SwiftUI

struct LegendLine: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x:rect.minX,y:rect.midY))
        path.addLine(to: CGPoint(x:rect.maxX,y:rect.midY))
        return path
    }
}


struct LegendSingleView:View {
    let name:String
    let color:Color
    let legendLineLength:CGFloat
    let legendWidth:CGFloat
    let legendHeight:CGFloat
    let legendLineWidth:CGFloat
    
    var body: some View{
        HStack{
            LegendLine()
                .stroke(color,lineWidth: legendLineWidth)
                .frame(width:legendLineLength)
                
            Text(name)
        }
        .frame(width: legendWidth, height: legendHeight)
    }
}


struct Legend_Previews: PreviewProvider {
    static var previews: some View {
        LegendSingleView(name: "Test",
                   color: .red,
                   legendLineLength: 20,
                   legendWidth: 70,
                   legendHeight: 30,
                   legendLineWidth: 3)

    }
}
