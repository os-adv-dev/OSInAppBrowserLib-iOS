import UIKit

/// Structure responsible for managing all WebView callbacks to its callers.
public struct OSIABWebViewCallbackHandler {
    /// Callback to trigger when the an URL needs to be delegates to its callers.
    let onDelegateURL: (URL) -> Void
    /// Callback to trigger when the created `UIAlertController` is delegated to its callers.
    let onDelegateAlertController: (UIAlertController) -> Void
    /// Callback to trigger when the initial page load is performed.
    let onBrowserPageLoad: () -> Void
    /// Callback to trigger when the browser is closed. The boolean arguments indicates if the browser was already close or still needs to be.
    let onBrowserClosed: (Bool) -> Void
    /// Callback to trigger when the browser finishes navigation. The argument can be used to send data back to OS
    let onBrowserNavigate: ([String:Any]?) -> Void
    
    /// Constructor method.
    /// - Parameters:
    ///   - onDelegateURL: Callback to trigger when the an URL needs to be delegates to its callers.
    ///   - onDelegateAlertController: Callback to trigger when the created `UIAlertController` is delegated to its callers.
    ///   - onBrowserPageLoad: Callback to trigger when the initial page load is performed.
    ///   - onBrowserClosed: Callback to trigger when the browser is closed. The boolean arguments indicates if the browser was already close or still needs to be.
    public init(
        onDelegateURL: @escaping (URL) -> Void,
        onDelegateAlertController: @escaping (UIAlertController) -> Void,
        onBrowserPageLoad: @escaping () -> Void,
        onBrowserClosed: @escaping (Bool) -> Void, // boolean indicates if the browser is already closed.
        onBrowserNavigate: @escaping ([String:Any]?) -> Void // Object to send data back to OS
    ) {
        self.onDelegateURL = onDelegateURL
        self.onDelegateAlertController = onDelegateAlertController
        self.onBrowserPageLoad = onBrowserPageLoad
        self.onBrowserClosed = onBrowserClosed
        self.onBrowserNavigate = onBrowserNavigate
    }
}
