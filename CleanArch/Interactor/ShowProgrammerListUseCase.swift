//
//  ShowProgrammerInteractor.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

/*

 2. Create the business logic for the previously created Programmer

 */



// Class because we need references
class ShowProgrammerListUseCase {
    /* 5. Add an entity Gateway */
    let entityGateway: EntityGateway


    /*11. Presentation calls */
    var presenter: ProgrammerListPresentation!

    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }

    /* 3. Create the first method to present the programmers */
    func showProgrammers() {
        // Steps
        // 1. Fetch programmers Data

        /* 6. Call the fetcher */
        let programmers = entityGateway.fetchProgrammers()

        // 2. "Process"

        /* 9. Transform the data */
        let programmersData = programmers.map { ProgrammerResponse(programmer: $0) }

        // 3. Pass it to presenter

        presenter.present(programmers: programmersData)


    }
}
