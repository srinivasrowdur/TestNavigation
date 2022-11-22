//
//  PatientsListView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 20/11/2022.
//

import SwiftUI
import FirebaseFirestoreSwift

private struct Patient: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var age: Int

}


struct PatientsListView: View {
    @EnvironmentObject private var navigationModel :NavigationModel
    @FirestoreQuery(
        collectionPath: "patients"
        ) fileprivate var patients: [Patient]
    var body: some View {
        List (patients) { patient in
            
            HStack{
                
                    Text(patient.name)
                        .font(.largeTitle)
                Spacer()
                
                Text("\(patient.age)")
                        .font(.largeTitle)
                    
             
              
            }
        }
        .navigationTitle("Patients")
    }
}

struct PatientsListView_Previews: PreviewProvider {
    static var previews: some View {
        PatientsListView()
    }
}
