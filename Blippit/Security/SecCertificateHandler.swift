//
//  SecCertificateHandler.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-13.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Foundation

struct SecCertificateHandler {
  let createWithData = SecCertificateCreateWithData >>> apply(UnsafeBitCast.toCertificate, curry(fmap))
  let copyData = UnsafeBitCast.toSecCertificate >> SecCertificateCopyData
}

extension SecCertificateHandler: CertificateHandling {}
