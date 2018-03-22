//
//  Date+Formatter.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

extension Date {

    // note the default value. Ease testing functionality (no parameters in normal code)
    func relativeDescription(date: Date = Date()) -> String {
        let dates = ["Yesterday", "Today", "2 weeks ago"]
        let index = Int(arc4random_uniform(UInt32(dates.count)))

        return dates[index]
    }
}
