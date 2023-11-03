//
//  ImagePickerView.swift
//  AICommunicationCoachExpert
//
//  Created by omer elmas on 30.10.2023.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View {
    @State private var isAnalyzing = false
    @State private var isPresentingAnalysis = false

    var body: some View {
        NavigationStack {
            VStack {
                ImagePicker(title: "Drag & Drop", subTitle: "Tap to add an Image", systemImage: "square.and.arrow.up", tint: .blue) { image in
                    print(image)
                }
                .frame(maxWidth: 300, maxHeight: 250)
                .padding(.top, 20)

                Spacer()
                    .frame(height: 40)

                Text("Drag & Drop Your Chat Screenshot")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Spacer()

                if isAnalyzing {
                    ProgressView("Analyzing...")
                } else {
                    Button {
                        isAnalyzing = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            isAnalyzing = false
                            isPresentingAnalysis = true
                        }
                        print("Image Uploaded !")
                    } label: {
                        Label("Analyze", systemImage: "magnifyingglass")
                            .padding()
                            .background(.blue.opacity(0.2))
                            .clipShape(Capsule(), style: FillStyle())

                    }
                }
            }
            .padding()
            .navigationTitle("Image Picker")
        }
        .fullScreenCover(isPresented: $isPresentingAnalysis) {
            AnalysisView()
        }
    }
}

#Preview {
    ImagePickerView()
}


