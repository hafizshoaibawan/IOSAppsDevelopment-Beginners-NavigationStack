//
//  ContentView.swift
//  NavigationStack
//
//  Created by Shoaib Akram on 18/08/2023.
//

import SwiftUI


enum Links: Hashable {
    case secondView, thirdView, otherView
}

struct ContentView: View {
    
    @State private var path: NavigationPath = .init()
    
    
    var body: some View {
        
        NavigationStack(path: self.$path) {
         
            
            VStack(spacing: 40) {
                NavigationLink(value: Links.secondView) {
                     Text("Go next")
                }
                .navigationBarBackButtonHidden(true)
                
                Button("Call api and go next") {
                    self.callApi()
                }
            }
            .navigationDestination(for: Links.self) { value in
                
                if value == .secondView {
                    SecondView(path: self.$path)
                        .navigationBarBackButtonHidden(true)
                }
                else if value == .otherView {
                    Text("This is next view 2")
                        .navigationBarBackButtonHidden(true)
                }
                else if value == .thirdView {
                    ThirdView(path: self.$path)
                        .navigationBarBackButtonHidden(true)
                }
                
            }
            
        }
    }
    
    func callApi() {
        
        
        var count = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            
            count += 1
            
            if count == 1 {
                self.path.append(Links.otherView)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
