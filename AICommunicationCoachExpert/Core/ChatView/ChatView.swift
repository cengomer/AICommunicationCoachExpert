//
//  ChatView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 31.10.2023.
//

import SwiftUI

struct ChatView: View {
    @State private var MessageInput = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                Image("ChatBG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    AvatarView()
                        .padding(.top , 10)
                    Spacer()
                    
                    TextField("Enter Your Message" , text: $MessageInput,axis: .vertical)
                        .padding()
                        .padding(.trailing,75)
                        .frame(width: 380, height: 50)
                        .background()
                        .clipShape(Capsule())
                        .padding()
                        .overlay {
                            ZStack{
                                Capsule().stroke(.blue.opacity(0.6),style: StrokeStyle(lineWidth: 3.5))
                                    .frame(width: 380, height: 50)
                                
                                HStack {
                                    Spacer()
                                    
                                    Button{
                                        
                                    }label: {
                                        Text("Send")
                                            .fontWeight(.semibold)
                                            .padding(6)
                                            .frame(width: 60, height: 25)
                                            .foregroundStyle(.white)
                                            .background(.blue.opacity(0.6))
                                            .clipShape(Capsule())
                                        
                                    }
                                    Button{
                                        
                                    }label: {
                                        Image(systemName: "mic")
                                            .fontWeight(.semibold)
                                            .padding(3)
                                            .frame(width: 40, height: 25)
                                            .foregroundStyle(.white)
                                            .background(.blue.opacity(0.6))
                                            .clipShape(Capsule())
                                            .padding(.trailing , 25)
                                    }
                                }
                            }
                        }
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .imageScale(.large)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5, x: 0, y: 5)
                    }
                   

                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5, x: 0, y: 5)
                    }
                }
            }
        }
    }
}

#Preview {
    ChatView()
}
