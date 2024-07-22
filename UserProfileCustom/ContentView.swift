//
//  ContentView.swift
//  UserProfileCustom
//
//  Created by Sumit on 22/07/24.
//

import SwiftUI

struct CounterView: UIViewControllerRepresentable {

    typealias UIViewControllerType = CounterViewController

    func makeUIViewController(context: Context) -> CounterViewController {
        CounterViewController()
    }

    func updateUIViewController(_ uiViewController: CounterViewController, context: Context) {
       // Update the ViewController here
    }
    
    
 }

 struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI + UIKit")
                .padding(48)
                .font(.title.bold())
            CounterView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
