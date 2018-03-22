//
//  ProgrammerListPresentation.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

/*10. We need a presentation protocol*/
protocol ProgrammerListPresentation {
    func present(programmers: [ProgrammerResponse])
}
