//
//  ThirdView.swift
//  NavigationStack
//
//  Created by Shoaib Akram on 18/08/2023.
//

import SwiftUI

struct ThirdView: View {
    
    @Binding var path: NavigationPath
    
    
    var body: some View {
        
        VStack {
            Text("Third View")
            
            Button("Go back") {
                self.path.removeLast()
            }
            
            Button("Go to root") {
                self.path = .init()
            }
        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(path: .constant(NavigationPath.init()))
    }
}
