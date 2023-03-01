//
//  TighnariViewController.swift
//  genshinbuild
//
//  Created by Laake, Nolan - Student on 3/1/23.
//

    import UIKit
    import WebKit

    class TighnariViewController: UIViewController, WKUIDelegate {
        
        var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://genshin.gg/characters/tighnari/")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }

