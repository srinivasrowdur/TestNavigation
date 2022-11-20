//
//  Doctor.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import Foundation
import FirebaseFirestoreSwift

private struct Doctor: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var address: String
    var qualification: String

}
