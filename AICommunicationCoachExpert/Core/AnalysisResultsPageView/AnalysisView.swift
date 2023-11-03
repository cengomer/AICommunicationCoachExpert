//
//  AnalysisView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 2.11.2023.
//

import SwiftUI

struct AnalysisView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isShowingAlert = false
    var body: some View {
        NavigationStack {
            VStack (alignment:.center){
                Image("smiling")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100,height: 100)
                
                Text("Your Strengths")
                    .font(.system(size: 30,weight: .bold,design: .rounded))
                
                Text("Your communication ae strengths")
                    .padding(.top,5)
                    .font(.system(size: 19,weight: .medium,design: .rounded))
                
                /// Strengths Section goes here
                
                VStack(spacing:20){
                    ScrollView(showsIndicators:false){
                        StrengthRowView(image: "Strength1", sticker: "kiss", title: "Respectful and Attentive Behavior", percent: "32")
                        Divider()
                        
                        StrengthRowView(image: "Strength2", sticker: "skull", title: "Genuine Interest", percent: "93")
                        Divider()
                        
                        StrengthRowView(image: "Strength3", sticker: "rolleyes", title: "Balanced Confidence", percent: "54")
                        Divider()
                        
                        StrengthRowView(image: "Strength4", sticker: "heart-eyes", title: "Positive and Kind Communication", percent: "63")
                        Divider()
                        
                        StrengthRowView(image: "romantic", sticker: "mad", title: "Humor and Spark", percent: "99")
                        Divider()
                        StrengthRowView(image: "romantic", sticker: "mad", title: "Sincere Compliments and Mutual Interest", percent: "99")
                        Divider()
                        StrengthRowView(image: "romantic", sticker: "mad", title: "Patience and Respect for Boundaries", percent: "99")
                        Divider()
                        StrengthRowView(image: "romantic", sticker: "mad", title: "Adaptability and Timing", percent: "99")
                        Divider()
                    }
                }.padding()

                Spacer()
                
                Button{
                    isShowingAlert = true
                }label: {
                    Text("Share your Insights")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 220, height: 65)
                        .background(.blue)
                        .clipShape(Capsule())
                        .font(.system(size: 19, weight: .bold, design: .rounded))


                }
                .alert(isPresented: $isShowingAlert) {
                             Alert(
                                 title: Text("🎊Insights Shared🎊"),
                                 message: Text("Thank you for sharing your insights!"),
                                 dismissButton: .default(Text("OK"))
                             )
                         }
                
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    }label: {
                        Text("Moble")
                            .foregroundStyle(.black)
                            .font(.system(size: 15,weight: .semibold,design: .rounded))

                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .font(.system(size: 15,weight: .semibold,design: .rounded))

                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    }label: {
                        Image(systemName: "wifi")
                            .foregroundStyle(.black)
                            .font(.system(size: 15,weight: .semibold,design: .rounded))

                    }
                }
            }
        }
    }
}

#Preview {
    AnalysisView()
}
