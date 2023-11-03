//
//  ChatViewModel.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 3.11.2023.
//

import Foundation

extension ChatView {
    class ViewModel: ObservableObject {
        @Published var messages: [Message] = []
        
        func sendMessage() {
            
        }
    }
}

struct Message: Decodable {
    let id: UUID
    let role: SenderRole
    let content: String
    let createAt: Date
}
