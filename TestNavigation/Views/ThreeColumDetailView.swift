//
//  ThreeColumDetailView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/22/22.
//

import SwiftUI
import Combine

struct ThreeColumDetailView: View {
    
    @EnvironmentObject private var navigationModel :NavigationModel
    

    var body: some View {
        
        if ((navigationModel.selectedHospitalMenu) == .branches) {
            BranchListView()
        } else if ((navigationModel.selectedHospitalMenu) == .patients) {
            PatientsListView()
            
        }else if ((navigationModel.selectedHospitalMenu) == .doctors) {
            DoctorsListView()
        }
       
    }
}

struct ThreeColumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeColumDetailView()
    }
}
