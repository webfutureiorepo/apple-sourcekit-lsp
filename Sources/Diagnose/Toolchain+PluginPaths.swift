//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2025 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SourceKitD
import ToolchainRegistry

extension Toolchain {
  var pluginPaths: PluginPaths? {
    guard let sourceKitClientPlugin, let sourceKitServicePlugin else {
      return nil
    }
    return PluginPaths(clientPlugin: sourceKitClientPlugin, servicePlugin: sourceKitServicePlugin)
  }
}
