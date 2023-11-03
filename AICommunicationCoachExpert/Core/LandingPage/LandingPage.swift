//
//  LandingPage.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 30.10.2023.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        NavigationStack {
            ZStack{
                
                // MARK: Soft gradient transitioning from light blue to white Color
                
                                LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                
                // MARK: Soft gradient transitioning from light blue to white Image
                
//                Image("soft")
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea()
                
                VStack(alignment:.center){
                    
                    HStack {
                        Image("skull")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 44, height: 44)
                        
                        Text("Cupid AI")
                            .font(.system(size: 20,weight: .semibold,design: .rounded))
                            .foregroundStyle(.white)
                    }
                    
                    VStack{
                        UpgradePlanView()

                        AutoSlide()
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    
                    
                    HStack {
                        
//                        NavigationLink {
//                            ImagePickerView()
//                        }label: {
//                            Text("Upload Screenshot")
//                                .modifier(StandardButtonStyle())
//                                .foregroundStyle(.white)
//                                .background(.blue)
//                                .clipShape(Capsule())
//                                .shadow(color: .black, radius: 5, x: 0, y: 5)
//                            
//                        }
                        
                        NavigationLink {
                            PasteTextView()
                        }label: {
                            HStack{
                                
                                
                                Text("Chat with Cupid   \(Image(systemName: "chevron.right"))")
                                    
                                    .modifier(StandardButtonStyle())
                                    .foregroundStyle(.white)
                                    .background(.blue)
                                    .clipShape(Capsule())
                                    .shadow(color: .black, radius: 5, x: 0, y: 5)

                                    
                                
                                
                            }

                        }
                        
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    LandingPage()
}
