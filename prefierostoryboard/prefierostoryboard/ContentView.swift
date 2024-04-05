//
//  ContentView.swift
//  prefierostoryboard
//
//  Created by Kevin Axel Cantu Garcia on 04/04/24.
//

import SwiftUI
import WebKit

struct ContentView: View {
    let webView = WebView(request: URLRequest(url: URL(string: "https://www.oncediario.com/")!))
    
    var body: some View {
        VStack {
            webView
            
            HStack {
                
                Button(action: {
                    self.webView.goHome()
                }){
                    Image(systemName: "house.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding()
                    
                }
            }
        }
    }
}
struct WebView: UIViewRepresentable {
    let request: URLRequest
    private var webView: WKWebView?
    
    init(request: URLRequest) {
            self.webView = WKWebView()
            self.request = request
        }
  
    func makeUIView(context: Context) -> WKWebView {
        return webView!
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    
    func goHome() {
        webView?.load(request)
    }
}
  
  
