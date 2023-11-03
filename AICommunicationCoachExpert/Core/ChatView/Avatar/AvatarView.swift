//
//  AvatarView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 31.10.2023.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack(alignment:.center,spacing: 18){
            Image("AIChatBot")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle(),style: FillStyle())
                .shadow(color: .black, radius: 5, x: 0, y: 5)

            Text("Communication Coach")
                .font(.system(size: 18,weight: .semibold,design: .rounded))
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 5, x: 0, y: 5)

            Spacer()
        }
    }
}

#Preview {
    AvatarView()
}
