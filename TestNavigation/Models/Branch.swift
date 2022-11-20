//
//  Branch.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import Foundation
import FirebaseFirestoreSwift

private struct Branch: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var address: String
}
