//
//  NavigationModel.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import SwiftUI
import Combine

class NavigationModel : ObservableObject {
    
    @Published var selectedHospitalMenu: HospitalMenu? = .branches
    
}
