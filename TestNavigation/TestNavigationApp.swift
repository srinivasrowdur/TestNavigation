//
//  TestNavigationApp.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/18/22.
//

import SwiftUI
import FirebaseCore


@main
struct TestNavigationApp: App {
    
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
