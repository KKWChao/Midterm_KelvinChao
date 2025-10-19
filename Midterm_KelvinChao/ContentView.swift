//
//  ContentView.swift
//  Midterm_KelvinChao
//
//  Created by Kelvin Chao on 10/18/25.
//

import SwiftUI

let dogs = Bundle.main.decode([Subject].self, from: "Data.json")

struct DogDescription: View {
    let item: Subject
    
    var body: some View {
        ZStack {
            VStack {
                Image(item.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                Text(item.name)
                    .font(.system(size: 42, weight: .bold))
                    .padding(.bottom, 12)
                Divider()
                Text(item.description)
                Spacer()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(dogs, id: \.id) { dog in
                    NavigationLink(destination: DogDescription(item: dog)) {
                        HStack {
                            Image(dog.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75)
                                .cornerRadius(5)
                            Text(dog.name)
                        }
                    }
                }
            }.navigationTitle("F1 Drivers of 2025")
        }
    }
}

#Preview {
    ContentView()
}
