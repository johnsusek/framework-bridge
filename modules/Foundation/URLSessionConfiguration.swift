import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionConfiguration
    - name: NSURLSessionConfiguration
    - argLabels: 
    - Introduced: 10.9
  */

@objc(URLSessionConfiguration) protocol URLSessionConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: background
    - name: backgroundSessionConfigurationWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: background(withIdentifier:)
    - Introduced: 10.10
  */
  @objc (backgroundSessionConfigurationWithIdentifier:) @available(OSX 10.10, *) static func background(withIdentifier: String) -> URLSessionConfiguration

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultSessionConfiguration
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: URLSessionConfiguration { @objc (defaultSessionConfiguration) get }

  /**
    - jsName: ephemeral
    - name: ephemeralSessionConfiguration
    - argLabels: 
    - obsoleted: 3
    - renamed: ephemeral
  */
  @objc static var ephemeral: URLSessionConfiguration { @objc (ephemeralSessionConfiguration) get }

  // Own Instance Properties

  /**
    - jsName: httpAdditionalHeaders
    - name: HTTPAdditionalHeaders
    - argLabels: 
    - obsoleted: 3
    - renamed: httpAdditionalHeaders
  */
  @objc var httpAdditionalHeaders: [AnyHashable: Any]? { @objc (HTTPAdditionalHeaders) get @objc (setHTTPAdditionalHeaders:) set }

  /**
    - jsName: httpCookieAcceptPolicy
    - name: HTTPCookieAcceptPolicy
    - argLabels: 
    - obsoleted: 3
    - renamed: httpCookieAcceptPolicy
  */
  @objc var httpCookieAcceptPolicy: HTTPCookie.AcceptPolicy { @objc (HTTPCookieAcceptPolicy) get @objc (setHTTPCookieAcceptPolicy:) set }

  /**
    - jsName: httpCookieStorage
    - name: HTTPCookieStorage
    - argLabels: 
    - obsoleted: 3
    - renamed: httpCookieStorage
  */
  @objc var httpCookieStorage: HTTPCookieStorage? { @objc (HTTPCookieStorage) get @objc (setHTTPCookieStorage:) set }

  /**
    - jsName: httpMaximumConnectionsPerHost
    - name: HTTPMaximumConnectionsPerHost
    - argLabels: 
    - obsoleted: 3
    - renamed: httpMaximumConnectionsPerHost
  */
  @objc var httpMaximumConnectionsPerHost: Int { @objc (HTTPMaximumConnectionsPerHost) get @objc (setHTTPMaximumConnectionsPerHost:) set }

  /**
    - jsName: httpShouldSetCookies
    - name: HTTPShouldSetCookies
    - argLabels: 
    - obsoleted: 3
    - renamed: httpShouldSetCookies
  */
  @objc var httpShouldSetCookies: Bool { @objc (HTTPShouldSetCookies) get @objc (setHTTPShouldSetCookies:) set }

  /**
    - jsName: httpShouldUsePipelining
    - name: HTTPShouldUsePipelining
    - argLabels: 
    - obsoleted: 3
    - renamed: httpShouldUsePipelining
  */
  @objc var httpShouldUsePipelining: Bool { @objc (HTTPShouldUsePipelining) get @objc (setHTTPShouldUsePipelining:) set }

  /**
    - jsName: tlsMaximumSupportedProtocol
    - name: TLSMaximumSupportedProtocol
    - argLabels: 
    - obsoleted: 3
    - renamed: tlsMaximumSupportedProtocol
    - introduced: 10.9
    - deprecated: 100000
    - Introduced: 10.9
    - Deprecated: 100000
    - Replacement: TLSMaximumSupportedProtocolVersion
  */
  @objc @available(OSX 10.9, *) var tlsMaximumSupportedProtocol: SSLProtocol { @objc (TLSMaximumSupportedProtocol) get @objc (setTLSMaximumSupportedProtocol:) set }

  /**
    - jsName: tlsMaximumSupportedProtocolVersion
    - name: TLSMaximumSupportedProtocolVersion
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: tlsMaximumSupportedProtocolVersion
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var tlsMaximumSupportedProtocolVersion: tls_protocol_version_t { @objc (TLSMaximumSupportedProtocolVersion) get @objc (setTLSMaximumSupportedProtocolVersion:) set }

  /**
    - jsName: tlsMinimumSupportedProtocol
    - name: TLSMinimumSupportedProtocol
    - argLabels: 
    - obsoleted: 3
    - renamed: tlsMinimumSupportedProtocol
    - introduced: 10.9
    - deprecated: 100000
    - Introduced: 10.9
    - Deprecated: 100000
    - Replacement: TLSMinimumSupportedProtocolVersion
  */
  @objc @available(OSX 10.9, *) var tlsMinimumSupportedProtocol: SSLProtocol { @objc (TLSMinimumSupportedProtocol) get @objc (setTLSMinimumSupportedProtocol:) set }

  /**
    - jsName: tlsMinimumSupportedProtocolVersion
    - name: TLSMinimumSupportedProtocolVersion
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: tlsMinimumSupportedProtocolVersion
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var tlsMinimumSupportedProtocolVersion: tls_protocol_version_t { @objc (TLSMinimumSupportedProtocolVersion) get @objc (setTLSMinimumSupportedProtocolVersion:) set }

  /**
    - jsName: urlCache
    - name: URLCache
    - argLabels: 
    - obsoleted: 3
    - renamed: urlCache
  */
  @objc var urlCache: URLCache? { @objc (URLCache) get @objc (setURLCache:) set }

  /**
    - jsName: urlCredentialStorage
    - name: URLCredentialStorage
    - argLabels: 
    - obsoleted: 3
    - renamed: urlCredentialStorage
  */
  @objc var urlCredentialStorage: URLCredentialStorage? { @objc (URLCredentialStorage) get @objc (setURLCredentialStorage:) set }

  /**
    - jsName: allowsCellularAccess
    - name: allowsCellularAccess
    - argLabels: 
  */
  @objc var allowsCellularAccess: Bool { @objc get @objc (setAllowsCellularAccess:) set }

  /**
    - jsName: allowsConstrainedNetworkAccess
    - name: allowsConstrainedNetworkAccess
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsConstrainedNetworkAccess: Bool { @objc get @objc (setAllowsConstrainedNetworkAccess:) set }

  /**
    - jsName: allowsExpensiveNetworkAccess
    - name: allowsExpensiveNetworkAccess
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsExpensiveNetworkAccess: Bool { @objc get @objc (setAllowsExpensiveNetworkAccess:) set }

  /**
    - jsName: connectionProxyDictionary
    - name: connectionProxyDictionary
    - argLabels: 
  */
  @objc var connectionProxyDictionary: [AnyHashable: Any]? { @objc get @objc (setConnectionProxyDictionary:) set }

  /**
    - jsName: isDiscretionary
    - name: discretionary
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isDiscretionary
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isDiscretionary: Bool { @objc get @objc (setDiscretionary:) set }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: String? { @objc get }

  /**
    - jsName: networkServiceType
    - name: networkServiceType
    - argLabels: 
  */
  @objc var networkServiceType: NSURLRequest.NetworkServiceType { @objc get @objc (setNetworkServiceType:) set }

  /**
    - jsName: protocolClasses
    - name: protocolClasses
    - argLabels: 
  */
  @objc var protocolClasses: [AnyClass]? { @objc get @objc (setProtocolClasses:) set }

  /**
    - jsName: requestCachePolicy
    - name: requestCachePolicy
    - argLabels: 
  */
  @objc var requestCachePolicy: NSURLRequest.CachePolicy { @objc get @objc (setRequestCachePolicy:) set }

  /**
    - jsName: sharedContainerIdentifier
    - name: sharedContainerIdentifier
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sharedContainerIdentifier: String? { @objc get @objc (setSharedContainerIdentifier:) set }

  /**
    - jsName: shouldUseExtendedBackgroundIdleMode
    - name: shouldUseExtendedBackgroundIdleMode
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var shouldUseExtendedBackgroundIdleMode: Bool { @objc get @objc (setShouldUseExtendedBackgroundIdleMode:) set }

  /**
    - jsName: timeoutIntervalForRequest
    - name: timeoutIntervalForRequest
    - argLabels: 
  */
  @objc var timeoutIntervalForRequest: TimeInterval { @objc get @objc (setTimeoutIntervalForRequest:) set }

  /**
    - jsName: timeoutIntervalForResource
    - name: timeoutIntervalForResource
    - argLabels: 
  */
  @objc var timeoutIntervalForResource: TimeInterval { @objc get @objc (setTimeoutIntervalForResource:) set }

  /**
    - jsName: waitsForConnectivity
    - name: waitsForConnectivity
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var waitsForConnectivity: Bool { @objc get @objc (setWaitsForConnectivity:) set }
}

extension URLSessionConfiguration: URLSessionConfigurationExports {
}
