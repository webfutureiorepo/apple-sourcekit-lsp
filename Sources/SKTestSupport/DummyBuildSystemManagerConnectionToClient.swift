//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

#if compiler(>=6)
import BuildSystemIntegration
package import LanguageServerProtocol
#else
import BuildSystemIntegration
import LanguageServerProtocol
#endif

package struct DummyBuildSystemManagerConnectionToClient: BuildSystemManagerConnectionToClient {
  package var clientSupportsWorkDoneProgress: Bool = false

  package init() {}

  package func send(_ notification: some NotificationType) async {}

  package func send<Request: RequestType>(_ request: Request) async throws -> Request.Response {
    throw ResponseError.unknown("Not implemented")
  }

  package func watchFiles(_ fileWatchers: [LanguageServerProtocol.FileSystemWatcher]) async {}
}
