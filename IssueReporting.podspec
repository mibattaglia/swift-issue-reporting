Pod::Spec.new do |s|
  s.name           = 'IssueReporting'
  s.version        = '1.8.3'
  s.summary        = 'Unobtrusive Swift issue reporting.'
  s.description    = 'Lightweight issue reporting tools extracted from XCTestDynamicOverlay.'
  s.author         = 'Point-Free'
  s.homepage       = 'https://github.com/pointfreeco/xctest-dynamic-overlay'
  s.license        = { type: 'MIT', file: 'LICENSE' }
  s.platforms      = { ios: '13.0', macos: '10.15', tvos: '13.0', watchos: '6.0' }
  s.source         = { git: 'https://github.com/mibattaglia/swift-issue-reporting.git', tag: s.version.to_s }
  s.swift_version  = '6.0'

  s.static_framework = true

  s.source_files = [
    'Sources/IssueReportingPackageSupport/**/*.swift',
    'Sources/IssueReporting/**/*.swift'
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'OTHER_SWIFT_FLAGS' => '-package-name IssueReporting'
  }
end
