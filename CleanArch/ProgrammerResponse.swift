//
//  ProgrammerResppnse.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

/* 8. Faked response from */
struct ProgrammerResponse {
    let fullName: String
    let date: Date
    let favourite: Bool
}


extension ProgrammerResponse {

    init(programmer: Programmer) {
        self.fullName = programmer.fullName
        self.date = programmer.interviewDate
        self.favourite = programmer.favourite
    }
}
