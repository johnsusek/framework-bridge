import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLSessionConfiguration
    - Introduced: 10.9
  */

@objc(URLSessionConfiguration) protocol URLSessionConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: backgroundSessionConfigurationWithIdentifier:
    - Introduced: 10.10
  */
  @objc (backgroundSessionConfigurationWithIdentifier:) @available(OSX 10.10, *) static func background(withIdentifier: String) -> URLSessionConfiguration

  // Own Static Properties

  /**
    - Selector: defaultSessionConfiguration
  */
  @objc static var `default`: URLSessionConfiguration { @objc (defaultSessionConfiguration) get }

  /**
    - Selector: ephemeralSessionConfiguration
  */
  @objc static var ephemeral: URLSessionConfiguration { @objc (ephemeralSessionConfiguration) get }

  // Own Instance Properties

  /**
    - Selector: HTTPAdditionalHeaders
  */
  @objc var httpAdditionalHeaders: [AnyHashable: Any]? { @objc (HTTPAdditionalHeaders) get @objc (setHTTPAdditionalHeaders:) set }

  /**
    - Selector: HTTPCookieAcceptPolicy
  */
  @objc var httpCookieAcceptPolicy: HTTPCookie.AcceptPolicy { @objc (HTTPCookieAcceptPolicy) get @objc (setHTTPCookieAcceptPolicy:) set }

  /**
    - Selector: HTTPCookieStorage
  */
  @objc var httpCookieStorage: HTTPCookieStorage? { @objc (HTTPCookieStorage) get @objc (setHTTPCookieStorage:) set }

  /**
    - Selector: HTTPMaximumConnectionsPerHost
  */
  @objc var httpMaximumConnectionsPerHost: Int { @objc (HTTPMaximumConnectionsPerHost) get @objc (setHTTPMaximumConnectionsPerHost:) set }

  /**
    - Selector: HTTPShouldSetCookies
  */
  @objc var httpShouldSetCookies: Bool { @objc (HTTPShouldSetCookies) get @objc (setHTTPShouldSetCookies:) set }

  /**
    - Selector: HTTPShouldUsePipelining
  */
  @objc var httpShouldUsePipelining: Bool { @objc (HTTPShouldUsePipelining) get @objc (setHTTPShouldUsePipelining:) set }

  /**
    - Selector: TLSMaximumSupportedProtocol
    - Introduced: 10.9
    - Deprecated: 100000
    - Replacement: TLSMaximumSupportedProtocolVersion
  */
  @objc @available(OSX 10.9, *) var tlsMaximumSupportedProtocol: SSLProtocol { @objc (TLSMaximumSupportedProtocol) get @objc (setTLSMaximumSupportedProtocol:) set }

  /**
    - Selector: TLSMaximumSupportedProtocolVersion
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var tlsMaximumSupportedProtocolVersion: tls_protocol_version_t { @objc (TLSMaximumSupportedProtocolVersion) get @objc (setTLSMaximumSupportedProtocolVersion:) set }

  /**
    - Selector: TLSMinimumSupportedProtocol
    - Introduced: 10.9
    - Deprecated: 100000
    - Replacement: TLSMinimumSupportedProtocolVersion
  */
  @objc @available(OSX 10.9, *) var tlsMinimumSupportedProtocol: SSLProtocol { @objc (TLSMinimumSupportedProtocol) get @objc (setTLSMinimumSupportedProtocol:) set }

  /**
    - Selector: TLSMinimumSupportedProtocolVersion
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var tlsMinimumSupportedProtocolVersion: tls_protocol_version_t { @objc (TLSMinimumSupportedProtocolVersion) get @objc (setTLSMinimumSupportedProtocolVersion:) set }

  /**
    - Selector: URLCache
  */
  @objc var urlCache: URLCache? { @objc (URLCache) get @objc (setURLCache:) set }

  /**
    - Selector: URLCredentialStorage
  */
  @objc var urlCredentialStorage: URLCredentialStorage? { @objc (URLCredentialStorage) get @objc (setURLCredentialStorage:) set }

  /**
    - Selector: allowsCellularAccess
  */
  @objc var allowsCellularAccess: Bool { @objc get @objc (setAllowsCellularAccess:) set }

  /**
    - Selector: allowsConstrainedNetworkAccess
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsConstrainedNetworkAccess: Bool { @objc get @objc (setAllowsConstrainedNetworkAccess:) set }

  /**
    - Selector: allowsExpensiveNetworkAccess
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsExpensiveNetworkAccess: Bool { @objc get @objc (setAllowsExpensiveNetworkAccess:) set }

  /**
    - Selector: connectionProxyDictionary
  */
  @objc var connectionProxyDictionary: [AnyHashable: Any]? { @objc get @objc (setConnectionProxyDictionary:) set }

  /**
    - Selector: discretionary
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isDiscretionary: Bool { @objc get @objc (setDiscretionary:) set }

  /**
    - Selector: identifier
  */
  @objc var identifier: String? { @objc get }

  /**
    - Selector: networkServiceType
  */
  @objc var networkServiceType: NSURLRequest.NetworkServiceType { @objc get @objc (setNetworkServiceType:) set }

  /**
    - Selector: protocolClasses
  */
  @objc var protocolClasses: [AnyClass]? { @objc get @objc (setProtocolClasses:) set }

  /**
    - Selector: requestCachePolicy
  */
  @objc var requestCachePolicy: NSURLRequest.CachePolicy { @objc get @objc (setRequestCachePolicy:) set }

  /**
    - Selector: sharedContainerIdentifier
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sharedContainerIdentifier: String? { @objc get @objc (setSharedContainerIdentifier:) set }

  /**
    - Selector: shouldUseExtendedBackgroundIdleMode
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var shouldUseExtendedBackgroundIdleMode: Bool { @objc get @objc (setShouldUseExtendedBackgroundIdleMode:) set }

  /**
    - Selector: timeoutIntervalForRequest
  */
  @objc var timeoutIntervalForRequest: TimeInterval { @objc get @objc (setTimeoutIntervalForRequest:) set }

  /**
    - Selector: timeoutIntervalForResource
  */
  @objc var timeoutIntervalForResource: TimeInterval { @objc get @objc (setTimeoutIntervalForResource:) set }

  /**
    - Selector: waitsForConnectivity
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var waitsForConnectivity: Bool { @objc get @objc (setWaitsForConnectivity:) set }
}

extension URLSessionConfiguration: URLSessionConfigurationExports {
}
