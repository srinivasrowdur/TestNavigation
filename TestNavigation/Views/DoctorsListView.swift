//
//  DoctorsListView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 20/11/2022.
//

import SwiftUI
import FirebaseFirestoreSwift

private struct Doctor: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var address: String
    var qualification: String

}


struct DoctorsListView: View {
        @EnvironmentObject private var navigationModel :NavigationModel
        @FirestoreQuery(
            collectionPath: "doctors"
            ) fileprivate var doctors: [Doctor]
        var body: some View {
            List (doctors) { doctor in
                
                VStack {
                    HStack {
                        
                            Text(doctor.name)
                                .font(.largeTitle)
                        Spacer()
                        Text(doctor.qualification)
                                .font(.largeTitle)

                      
                    }
                    Text(doctor.address)
                        .fontWeight(.light)
                    
                    
                }
                
            }
            .navigationTitle("Doctors")
        }
}

struct DoctorsListView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsListView()
    }
}
