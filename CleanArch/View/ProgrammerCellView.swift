//
//  ProgrammerCellView.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(date: String) // This is a string, and not a Date, because I don't want to transform anything inside the view. No logic in Views.
    func display(isFavourite: Bool)
}
