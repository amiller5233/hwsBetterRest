//
//  ContentView.swift
//  BetterRest
//
//  Created by Adam Miller on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        
        NavigationView {
            Form {
                Section{
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 0...24, step: 0.25)
                }
                
                Section {
                    DatePicker("Please enter a date", selection: $wakeUp)
                }
            }
        }
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
