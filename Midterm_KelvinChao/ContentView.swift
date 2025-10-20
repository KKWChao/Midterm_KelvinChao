//
//  ContentView.swift
//  Midterm_KelvinChao
//
//  Created by Kelvin Chao on 10/18/25.
//

/*
 * CIS 137
 * Kelvin Chao
 * 19/10/2025
 * Midterm Project
 */

import SwiftUI

let drivers = Bundle.main.decode([Drivers].self, from: "Data.json")

struct DriverPage: View {
    let person: Drivers
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                HStack {
                    Image(person.teamIcon)
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(person.team)
                    Spacer()
                    Text(String(person.number))
                }.padding(24).background(person.color)                        .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 32))

                Image(person.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
            }.background(person.color.opacity(0.2))

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
                    
                }
                .padding(24)
                .padding(.bottom, 56)
                .background(person.color)
                .foregroundColor(.white)
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
                            Image(driver.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .background(driver.color)
                                .cornerRadius(5)
                            Text(driver.name)
                        }
                    }
                }
            }.navigationTitle("Kelvin Chao's F1 Teams")
        }.tint(.black)
    }
}

#Preview {
    ContentView()
}
