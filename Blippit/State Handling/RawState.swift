//
//  RawState.swift
//  Blippit
//
//  Created by Jerson Perpetua on 2019-05-07.
//  Copyright © 2019 Crunchfish AB. All rights reserved.
//

import Podz

/* State representations that include relevant metadata to create the corresponding actual states */
enum RawState {
  case initial
  case starting
  case waitForPod
  case waitForBlip
  case setupTransferId(pid: UInt32, podSession: PodSession)
  case establishCloudSession(pid: UInt32, podSession: PodSession)
  case transferSessionToken(cloudSessionId: String, podSession: PodSession, sessionToken: TransferId)
  case waitForCloudSessionDone(cloudSessionId: String, podSession: PodSession)
  case transferCloudSessionDoneToken(podSession: PodSession, doneToken: TransferId)
  case blippitSessionCompleted
}

/* NOTE: Don't forget to update the `RawState+Equatable.swift` file in the test target when updating the cases */
