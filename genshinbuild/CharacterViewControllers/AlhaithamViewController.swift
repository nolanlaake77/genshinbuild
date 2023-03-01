//
//  AlhaithamViewController.swift
//  genshinbuild
//
//  Created by Laake, Nolan - Student on 2/28/23.
//
    import UIKit
    import WebKit

    class AlhaithamViewController: UIViewController, WKUIDelegate {
        
        var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://genshin.gg/characters/alhaitham/")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
