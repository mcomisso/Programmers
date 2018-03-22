//
//  Programmer.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

/* 1. Define an entity */
struct Programmer {
    let firstName: String
    let lastName: String

    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    // Values for determining level of this Programmer
    let emacs: Int
    let caffeine: Int

    let rating: Float
    let interviewDate: Date

    let favourite: Bool
}
