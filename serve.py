#!/usr/bin/env python3
"""
简单的HTTP服务器，用于本地预览HTML
"""
import http.server
import socketserver
import webbrowser
import os

PORT = 8000
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

def main():
    print(f"启动本地服务器: http://localhost:{PORT}")
    print("按 Ctrl+C 停止服务器")
    
    # 尝试打开浏览器
    try:
        webbrowser.open(f'http://localhost:{PORT}/collection-agency-management.html')
    except:
        pass
    
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n服务器已停止")

if __name__ == "__main__":
    main()