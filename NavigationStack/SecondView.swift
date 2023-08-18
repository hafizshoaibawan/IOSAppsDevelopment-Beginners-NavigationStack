//
//  SecondView.swift
//  NavigationStack
//
//  Created by Shoaib Akram on 18/08/2023.
//

import SwiftUI

struct SecondView: View {
    
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack(spacing: 40) {
            Text("This is second view")
            
            Button("Go to third view") {
                self.path.append(Links.thirdView)
            }
            
            Button("Go Back") {
                self.path.removeLast()
            }
        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(path: .constant(NavigationPath.init()))
    }
}
