//
//  DefaultPodSessionStateObservingState.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-15.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Podz

/* Mix-in that handles propagation of pod session errors */
protocol DefaultPodSessionStateObservingState: State, PodSessionStateObserving {
  var delegate: StateDelegate? { get }
}

extension DefaultPodSessionStateObservingState {
  func handleState(_ state: PodSessionState, for session: PodSession) {
    guard case .closed = state else {
      if let self = self as? ValidPodSessionStateObserving {
        self.handleValidState(state, for: session)
      }
      return
    }

    if let self = self as? Cancellable {
      self.cancel()
    }
    delegate?.state(self, didFailWithError: BlippitError.invalidPodSessionState(state))
  }
}