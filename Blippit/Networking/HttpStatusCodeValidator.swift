//
//  HttpStatusCodeValidator.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-16.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Foundation

protocol HttpStatusCodeValidator {
  func validate(_ statusCode: Int) -> Error?
}
