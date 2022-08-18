//
//  ContentView.swift
//  WeSplit
//
//  Created by steffan crowley on 8/17/22.
//

import SwiftUI

struct ContentView: View {
    let students = ["harry","ron", "hermione"]
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code:"USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach (0..<100) {
                            Text("\($0) people")
                        }
                    }
                      }
                Section {
                    Text(checkAmount, format: .currency(code:"USD"))
                }
                
                }
            .navigationTitle("WeSplit")
        }

        }

    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
