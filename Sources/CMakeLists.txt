add_compile_options("$<$<COMPILE_LANGUAGE:Swift>:SHELL:-package-name sourcekit_lsp>")
add_compile_options("$<$<COMPILE_LANGUAGE:Swift>:SHELL:-DRESILIENT_LIBRARIES>")
add_compile_options("$<$<COMPILE_LANGUAGE:Swift>:SHELL:-swift-version 6>")
add_subdirectory(BuildServerProtocol)
add_subdirectory(BuildSystemIntegration)
add_subdirectory(CAtomics)
add_subdirectory(CCompletionScoring)
add_subdirectory(CompletionScoring)
add_subdirectory(Csourcekitd)
add_subdirectory(Diagnose)
add_subdirectory(InProcessClient)
add_subdirectory(LanguageServerProtocol)
add_subdirectory(LanguageServerProtocolExtensions)
add_subdirectory(LanguageServerProtocolJSONRPC)
add_subdirectory(SemanticIndex)
add_subdirectory(SKLogging)
add_subdirectory(SKOptions)
add_subdirectory(SKUtilities)
add_subdirectory(SourceKitLSP)
add_subdirectory(SourceKitD)
add_subdirectory(sourcekit-lsp)
add_subdirectory(SwiftExtensions)
add_subdirectory(SwiftSourceKitClientPlugin)
add_subdirectory(SwiftSourceKitPlugin)
add_subdirectory(SwiftSourceKitPluginCommon)
add_subdirectory(ToolchainRegistry)
add_subdirectory(TSCExtensions)
