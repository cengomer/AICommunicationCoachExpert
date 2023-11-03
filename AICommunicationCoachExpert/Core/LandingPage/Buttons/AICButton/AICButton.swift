//
//  AICButton.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 30.10.2023.
//

import SwiftUI

struct StandardButtonStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontDesign(.rounded)
            .frame(width: UIScreen.main.bounds.width - 40, height: 50)
            .fontWeight(.semibold)
            .buttonStyle(.bordered)
    }
}
