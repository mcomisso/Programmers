//
//  EntityGateway.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

/* 4. Entity gateway will be implemented by any data persistance */
protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
