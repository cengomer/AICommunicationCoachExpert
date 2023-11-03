//
//  StrengthRowView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 2.11.2023.
//

import SwiftUI

struct StrengthRowView: View {
    let image : String
    let sticker : String
    let title : String
    let percent: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            
            Text(title)
                .font(.system(size: 19, weight: .semibold, design: .rounded))
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
            
            HStack(alignment:.center){
                Image(sticker)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                
                Text("%\(percent)")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .offset(y:5)
                
            }
        }
    }
}


#Preview {
    StrengthRowView(image: "person.circle", sticker: "kiss", title: "Effective empathy in responses", percent: "12")
}
