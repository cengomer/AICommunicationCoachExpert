//
//  UpgradePlanView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 3.11.2023.
//

import SwiftUI

struct UpgradePlanView: View {
    var body: some View {
        ZStack {
            
            
            HStack {
                
                /// Texts for premium plan

                VStack(alignment:.leading){
                    Text("Premium Plan")
                        .foregroundStyle(.white)
                        .font(.system(size: 25,weight: .semibold,design: .rounded))
                        .padding(.bottom,2)



                    Text("Unlock your ai chatbot &\nget all premium features")
                        .foregroundStyle(.white)
                        .font(.system(size: 15,weight: .light,design: .rounded))
                        .padding(.bottom)
                        .fixedSize(horizontal: false, vertical: true)
                    

                    
                    Button {
                        print("plan upgraded")
                    } label: {
                        Text("Upgrade Plan")
                            .foregroundStyle(.black)
                            .font(.system(size: 15,weight: .semibold,design: .rounded))
                            .padding()
                            .background(.white)
                            .clipShape(Capsule())

                        

                    }

                }
                
                Spacer()
                
                /// Cupid Ai Avatar
                
             

            }
            Image("boby")
            
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 180,alignment: .trailing)
                .offset(x:85,y:30)
              
            
            
        }
        .padding()
        .frame(width: 350, height: 185)
            .background(
                LinearGradient(colors: [.blue,.blue,.white], startPoint: .top, endPoint: .bottom)
)
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    UpgradePlanView()
}
