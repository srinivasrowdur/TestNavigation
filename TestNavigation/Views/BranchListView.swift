//
//  BranchListView.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 20/11/2022.
//

import SwiftUI
import FirebaseFirestoreSwift

private struct Branch: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var address: String
}

struct BranchListView: View {
    
    @EnvironmentObject private var navigationModel :NavigationModel
    @FirestoreQuery(
        collectionPath: "branches"
        ) fileprivate var branches: [Branch]
    
    var body: some View {
        List (branches) { branch in
            
            VStack(alignment: .leading) {
                Text(branch.name)
                    .font(.largeTitle)
                    
                   
                Text(branch.address)
                    .fontWeight(.light)
                    
                
            }
        }
        .navigationTitle("Branches")
    }
        
      
}

struct BranchListView_Previews: PreviewProvider {
    static var previews: some View {
        BranchListView()
    }
}
