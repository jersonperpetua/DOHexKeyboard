//
//  Startable.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-07.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Foundation

/* Conforming states can be started */
protocol Startable: AnyObject {
  func start()
}