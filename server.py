from http.server import SimpleHTTPRequestHandler, HTTPServer

# Define the IP address and port number
host = '127.0.0.1'
port = 8000

# Create an HTTP server with SimpleHTTPRequestHandler
server = HTTPServer((host, port), SimpleHTTPRequestHandler)

print(f'Server running on http://{host}:{port}')

# Start the server
server.serve_forever()