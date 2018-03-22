//
//  ProgrammersRepository.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

class ProgrammersRepository {
    var programmers: [Programmer]

    init() {
        let matt = Programmer.init(firstName: "Matteo",
                                              lastName: "Comisso",
                                              emacs: 2,
                                              caffeine: 3,
                                              rating: 1_000,
                                              interviewDate: Date(),
                                              favourite: true)

        let james = Programmer.init(firstName: "James",
                                              lastName: "Yorke",
                                              emacs: 2,
                                              caffeine: 2,
                                              rating: 461,
                                              interviewDate: Date(),
                                              favourite: false)

        self.programmers = [matt, james]
    }
}


extension ProgrammersRepository: EntityGateway {
    func fetchProgrammers() -> [Programmer] {
        return self.programmers
    }
}
