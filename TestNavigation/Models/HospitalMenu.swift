//
//  Hospital.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import SwiftUI

enum HospitalMenu: Int, Hashable, CaseIterable, Identifiable, Codable {
    case branches
    case doctors
    case patients
    case appointments
    
    var id: Int{rawValue}
    
    var localizedName: LocalizedStringKey {
        switch self {
        case .branches:
            return "Branches"
        case .doctors:
            return "Doctors"
        case .patients:
            return "Patients"
        case .appointments:
            return "Appointments"
        }
    }
}
