//
//  AuthViewController.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 20.04.2022.
//

import UIKit
import WebKit
class AuthViewController: UIViewController, WKNavigationDelegate {

    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,
                                configuration: config)
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
}
