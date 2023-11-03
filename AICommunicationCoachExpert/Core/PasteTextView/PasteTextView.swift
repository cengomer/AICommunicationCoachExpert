//
//  PasteTextView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 1.11.2023.
//

import SwiftUI

struct PasteTextView: View {
    @State private var promptText: String = ""
    @State private var isAnalyzing = false
    @State private var isPresentingAnalysis = false

    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $promptText)
                    .scrollContentBackground(.hidden)
                    .frame(width: 280,height: 260)
                    .padding()
                    .background {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(.blue.opacity(0.08).gradient)
                            
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(.blue,style: .init(lineWidth: 1,dash: [12]))
                                .padding(1)
                        }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Spacer()
                    .frame(height: 40)
                

                Text("Paste Your Conversation Text ⤴")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                
                Spacer()
                
                if isAnalyzing {
                ProgressView("Analyzing...")
                }else {
                    Button {
                        isAnalyzing = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            isAnalyzing = false
                            isPresentingAnalysis = true
                        }
                        print("Text Uploaded !")
                    }label: {
                        Label("Analyze",systemImage: "magnifyingglass")
                            .padding()
                            .background(.blue.opacity(0.2))
                            .clipShape(Capsule(), style: FillStyle())
                        
                    }
                }
            }
            .padding()
            .navigationTitle("Text area")
        }
        .fullScreenCover(isPresented: $isPresentingAnalysis) {
            AnalysisView()
        }
    }
}

#Preview {
    PasteTextView()
}
