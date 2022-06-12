import SwiftUI
import WebKit

struct WebView:UIViewRepresentable{
    var urlToLoad: String
    
    // ui view 그리기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string:self.urlToLoad) else { return WKWebView() }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url:url))
        
        return webview
    }
    
    // update ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
}

struct WebView_Previews:PreviewProvider {
    static var previews: some View{
        WebView(urlToLoad: "https://naver.com")
    }
}


