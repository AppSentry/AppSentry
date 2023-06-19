import Sentry

public struct SentryService {
    
    public init(){}
    
    public func start(with dsn: String) {
        SentrySDK.start { options in
            options.dsn = dsn
            options.debug = true // Enabled debug when first installing is always helpful
            
            // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
            // We recommend adjusting this value in production.
            options.tracesSampleRate = 1.0
            
            // Features turned off by default, but worth checking out
            options.enableAppHangTracking = true
            // Enable all experimental features
            options.enablePreWarmedAppStartTracing = true
            options.attachScreenshot = true
            options.attachViewHierarchy = true
            options.swiftAsyncStacktraces = true
        }
    }
}
