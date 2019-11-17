//
//  ViewController.swift
//  Project 1
//
//  Created by Moazzam Tahir on 14/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit
import WebKit //to use WKWebView

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webView: WKWebView!
    
    var urlString = "https://www.apple.com"
    var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "APPLE"
        
        progressBar = UIProgressView(progressViewStyle: .default)
        progressBar.sizeToFit()
        progressBar.progressTintColor = .red
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reload))
        let progress = UIBarButtonItem(customView: progressBar)
        
        
        
        toolbarItems = [refresh, spacer, progress].reversed()
        navigationController?.setToolbarItems(toolbarItems, animated: true)
        navigationController?.setToolbarHidden(false, animated: true)
        
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        webView.navigationDelegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Choose", style: .done, target: self, action: #selector(choseWeb))
        
       loadUrl()
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressBar.progress = Float(webView.estimatedProgress)
        }
    }
    
    @objc func reload() {
        webView.reload()
    }
    
    func loadUrl() {
        guard let url = URL(string: urlString) else {
            print("URL not valid")
            return
        }
        print(url.host ?? "nil")
        webView.load(URLRequest(url: url))
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = URL(string: urlString) else {return}
        if let host = url.host {
            if urlString.contains(host) {
                decisionHandler(.allow)
                return
            }
        }
    }
    
    @objc func choseWeb() {
        let alert = UIAlertController(title: "Choose page", message: nil, preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "apple.com", style: .default, handler: openPage)
        let action2 = UIAlertAction(title: "google.com", style: .default, handler: openPage)
        let action3 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        //trezgl alert.popoverPresentationController?.barButtonItem
        present(alert, animated: true)
    }
    
    @objc func openPage(_ sender: UIAlertAction) {
        urlString = "https://" + (sender.title ?? "google.com")
        print(urlString)
        loadUrl()
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        
    }

}

