//
//  ContentView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var navigationModel: NavigationModel = NavigationModel()
    
    var body: some View {
        
        ThreeColumnMasterView()
            .environmentObject(navigationModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
