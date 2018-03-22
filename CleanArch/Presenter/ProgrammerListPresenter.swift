//
//  ProgrammerListPresenter.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

class ProgrammerListPresenter {

    // This is readable by anywhere
    var programmerResponses: [ProgrammerResponse] = []


    var numberOfRows: Int {
        return 0
    }

    func viewReady() {

    }
}

// The USE CASE shouldn't know about this
extension ProgrammerListPresenter: ProgrammerListPresentation {

    func present(programmers: [ProgrammerResponse]) {
        self.programmerResponses = programmers
    }

}
