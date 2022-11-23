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
    @State private var text: String = ""

    @EnvironmentObject private var navigationModel :NavigationModel
    @FirestoreQuery(
        collectionPath: "branches"
        ) fileprivate var branches: [Branch]
    
    private var filteredBranches: [Branch] {
        if text.isEmpty {
            return branches
        }
        else {
            let filteredBranches = branches.filter {
                $0.name.contains(text)
                
            }
            return filteredBranches
        }
    }
  
    var body: some View {
        List (filteredBranches) { branch in
            VStack(alignment: .leading) {
                Text(branch.name)
                    .font(.largeTitle)
                    
                   
                Text(branch.address)
                    .fontWeight(.light)
                    
                
            }
        }
        .navigationTitle("Branches")
        .searchable(text: $text)
        .onSubmit(of: .search) {
                //submitCurrentSearchQuery()
           
            }
        
        
    }
        
      
}

struct BranchListView_Previews: PreviewProvider {
    static var previews: some View {
        BranchListView()
    }
}
