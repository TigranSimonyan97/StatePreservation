//
//  HomeView.swift
//  StatePreservationDemo
//
//  Created by Tigran Simonyan on 4/11/20.
//  Copyright © 2020 Scriptomania. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var isDarkTheme = false
    
    var body: some View {
        NavigationView {
            VStack (spacing: 20) {
                Spacer(minLength: 10)
                VStack (spacing: 60) {
                    Text(isDarkTheme ? "CORGI IN DARKNESS" : "CORGI")
                        .font(Font.system(.title))
                        .foregroundColor(isDarkTheme ? Color.white : Color.black)

                    Image(isDarkTheme ? "corgy_dark" : "corgy")
                    .resizable()
                        .frame(minWidth: 0, maxWidth: 350, maxHeight: 200)
                }
                
                Spacer()

                VStack(spacing: 30) {
                    Button("CHANGE THEME") {
                        self.isDarkTheme = !self.isDarkTheme
                    }.frame(width: 200, height: 30, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .background(Color(UIColor.systemBlue))
                        .foregroundColor(.white)
                        .font(Font.system(.body, design: .serif))
                        .cornerRadius(10)
                    VStack {
                        NavigationLink(destination: CorgiInfoView()) {
                            Text("MORE INFO")
                                .frame(width: 200, height: 30, alignment: .center)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .multilineTextAlignment(.center)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .font(Font.system(.body, design: .serif))
                                .cornerRadius(15)
                        }
                    }
                }
                Spacer()
            }.frame(minWidth: 0, maxWidth: .infinity)
             .background(isDarkTheme ? Color.black : Color.white)
             .navigationBarTitle("Corgi", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
