//
//  ThreeColumnMasterView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import SwiftUI

struct ThreeColumnMasterView: View {
    
    @EnvironmentObject private var navigationModel :NavigationModel
    var hospitalMenu = HospitalMenu.allCases
    
    var body: some View {
        NavigationSplitView(
            sidebar: {
                List(hospitalMenu, selection: $navigationModel.selectedHospitalMenu) {
                    hospitalMenuItems in NavigationLink(hospitalMenuItems.localizedName,value: hospitalMenuItems)
                }
                .navigationTitle("Dr Giri's Dental")
                
            }, content: {
                Text("Content")
                
            }, detail: {
                Text("Detail")})
    
    }
}

struct ThreeColumnMasterView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeColumnMasterView()
            .environmentObject(NavigationModel())
    }
}
