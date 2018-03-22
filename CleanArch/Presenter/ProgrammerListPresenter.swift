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

    private let useCase: ShowProgrammerListUseCase

    init(useCase: ShowProgrammerListUseCase) {
        self.useCase = useCase
    }

    var numberOfRows: Int {
        return programmerResponses.count
    }

    func viewReady() {
        useCase.showProgrammers()
    }

    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let programmer = programmerResponses[row]
        cell.display(name: programmer.fullName)
        cell.display(isFavourite: programmer.favourite)

    }
}

// The USE CASE shouldn't know about this
extension ProgrammerListPresenter: ProgrammerListPresentation {

    func present(programmers: [ProgrammerResponse]) {
        self.programmerResponses = programmers
    }

}
