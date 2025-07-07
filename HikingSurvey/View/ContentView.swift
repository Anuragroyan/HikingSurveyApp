//
//  ContentView.swift
//  HikingSurvey
//
//  Created by Dungeon_master on 07/06/25.
//

import SwiftUI


struct ContentView: View {
    @FocusState private var textFieldIsFocused: Bool
    @State var responses: [Response] = []
    @State private var reponseText = ""
    var scorer = Scorer()
    
    func saveResponse(text: String){
        let score = scorer.score(text)
        let response = Response(text: text, score: score)
        responses.insert(response, at: 0)
    }
    
    var body: some View {
        VStack {
            Text("Opinions on Hiking").frame(maxWidth:.infinity).font(.title).fontWeight(.bold)
                .padding(.top, 34)
            ScrollView {
                ChartView(responses: responses)
                ForEach(responses) { response in
                    ResponseView(response: response)
                }
            }
            HStack {
                TextField("What do you think about hiking?",text: $reponseText, axis: .vertical)
                    .textFieldStyle(.roundedBorder).lineLimit(5)
                Button("Done"){
                    guard !reponseText.isEmpty else { return }
                    saveResponse(text: reponseText)
                    reponseText = ""
                    textFieldIsFocused = false
                }
                .padding(.horizontal, 4)
            }
            .padding(.bottom, 8)
        }
        .onAppear {
            for response in Response.sampleResponses {
                saveResponse(text: response)
            }
        }
        .padding(.horizontal)
        .background(Color(white: 0.94))
    }
}

#Preview {
    ContentView()
}
