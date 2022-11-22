//
//  Appointment.swift
//  TestNavigation
//
//  Created by Srinivas Rowdur on 11/19/22.
//

import Foundation
import FirebaseFirestoreSwift

private struct Appointment: Codable, Identifiable, Equatable {
    @DocumentID var id: String?
    @DocumentID var branchid: String?
    @DocumentID var doctorid: String?
    @DocumentID var patiendid: String?
    @DocumentID var appointmentTypeid: String?
    var branchname: String
    var doctorname: String
    var patientname: String
    var appointmenttype: String
    var notes: String
    var fromdate: Date
    var todate: Date
}

