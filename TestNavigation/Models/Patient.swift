//
//  Patient.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import Foundation
import FirebaseFirestoreSwift

private struct Patient: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    var name: String
    var age: Int

}

