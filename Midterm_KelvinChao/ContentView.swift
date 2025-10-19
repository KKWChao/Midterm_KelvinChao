//
//  ContentView.swift
//  Midterm_KelvinChao
//
//  Created by Kelvin Chao on 10/18/25.
//

import SwiftUI

let drivers = Bundle.main.decode([Drivers].self, from: "Data.json")

struct DriverPage: View {
    let person: Drivers
    
    
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                HStack {
                    Image(person.teamIcon)
                    Text(person.team)
                    Spacer()
                    Text(String(person.number))
                        .fontWeight(.bold)
                }.background(.orange)

                Image(person.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
            }

            VStack(alignment: .center) {
                Spacer()
                VStack {
                    HStack {
                        Text(person.name)
                            .font(.system(size: 42, weight: .bold))
                            .padding(.bottom, 12)
                    }

                    Divider()
                    Text(person.description)
                    
                }.padding(24).background(Color.orange)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(drivers, id: \.id) { driver in
                    NavigationLink(destination: DriverPage(person: driver)) {
                        HStack {
                            Image(driver.teamIcon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .background(Color.gray)
                                .cornerRadius(5)
                            Text(driver.name)
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
