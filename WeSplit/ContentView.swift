//
//  ContentView.swift
//  WeSplit
//
//  Created by steffan crowley on 8/17/22.
//

import SwiftUI

struct ContentView: View {
    let students = ["harry","ron", "hermione"]
    @State private var selectedStudent = "harry"
    
    var body: some View {
        NavigationView {
            
            Form {
                Picker("select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                }
            }
        }

    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
