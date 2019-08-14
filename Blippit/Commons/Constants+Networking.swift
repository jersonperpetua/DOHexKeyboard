//
//  Constants+Networking.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-14.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Foundation

extension Constants {
  enum api {
    static let version = "0"

    enum defaults {
      /* Trailing slash on base path required */
#if PRODUCTION
      static let basePath = "https://prod-bsac.bubbelskum.com/api/\(version)/"
#elseif STAGE
      static let basePath = "https://stage-bsac.bubbelskum.com/api/\(version)/"
#else
      static let basePath = "https://dev-bsac.bubbelskum.com/api/\(version)/"
#endif

      static let contentType = "application/json"

      static let cachePolicy = URLRequest.CachePolicy.useProtocolCachePolicy
      static let timeoutInterval = TimeInterval(60.0)
    }

    enum establishCloudSession {
      static let config = ApiConfig(
        method: .post,
        resource: "session"
      )
    }

    enum getCloudSessionStatus {
      static let config = ApiConfig(
        method: .get,
        resource: "session/%@/status")
    }
  }
}
