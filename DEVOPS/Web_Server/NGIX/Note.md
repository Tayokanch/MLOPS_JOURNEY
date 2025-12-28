# NGINX Overview

`NGINX` is a high-performance, event-driven web server and reverse proxy designed to handle large volumes of concurrent connections efficiently. It is widely used in modern web architectures to improve performance, scalability, and security.

NGINX two major roles:
- As a **Web Server**
- As a **Proxy Server** (Reverse Proxy)

---

## NGINX as a Web Server

`NGINX` can function as a standalone web server that directly serves content to clients.

### Key Responsibilities
- Accept HTTP/HTTPS requests from client browsers
- Process incoming requests
- Serve static files such as HTML, CSS, JavaScript, images, and videos

NGINX is known for its high performance and low resource usage, making it suitable for handling large numbers of simultaneous client connections.

---

## NGINX as a Proxy Server

- A reverse proxy sits between clients and backend servers.

- Its main job is to receive client requests and forward them to the appropriate backend server.

- A reverse proxy can handle `security`, `SSL` `termination`, `caching`, and `request routing`.

**Key point:**

- It acts as a single entry point for the backend servers.

- The backend servers are hidden from the client.
---

## Load Balancing with NGINX

### Why Load Balancing Is Needed

As websites and applications grow, a single server cannot efficiently handle thousands or millions of incoming requests. This can lead to:
- Slow response times
- Server overload
- Downtime

To solve this problem, multiple backend web servers are deployed (for example, 10 servers). A load balancer is then placed in front of them.

### How NGINX Works as a Load Balancer

- Load balancing is a specific functionality of a reverse proxy.
  
- When NGINX is used as a load balancer:
  - It forwards requests to multiple backend servers
  - It decides which server should handle each request based on an algorithm

This ensures that traffic is distributed evenly and no single server becomes overwhelmed.

### Load Balancing Algorithms

NGINX distributes traffic based on configured algorithms, such as:

1. **Round Robin**  
   Requests are distributed sequentially to each server in a cyclical order.

2. **Least Connections**  
   Requests are routed to the server with the fewest active connections.

---

## NGINX Proxy for Caching

Caching is a core feature of NGINX when used as a proxy.

### How Caching Works
- NGINX stores responses from backend servers for frequently accessed resources
- These cached responses are stored temporarily on the proxy
- Subsequent requests for the same resource are served directly from the cache

### Benefits of Caching
- Reduced load on backend servers and databases
- Faster response times for clients
- Improved overall system performance

By serving cached content, NGINX avoids unnecessary requests to backend services.

---

## NGINX Proxy for Security

### Single Entry Point Architecture

In large systems, exposing many backend servers directly to the internet significantly increases the attack surface.

Using NGINX as a reverse proxy creates a **single public entry point**:
- Only the NGINX proxy is accessible from the internet
- Backend servers remain private and inaccessible directly

### Security Benefits

Centralizing traffic through NGINX enables:
- Consolidated security controls
- Minimized exposure of backend servers
- Centralized access control
- Centralized logging and monitoring

This architecture significantly reduces the risk of attacks and simplifies security management.

### Encrypted Communication

NGINX can be configured to:
- Accept encrypted HTTPS traffic (TLS termination)
- Reject unencrypted HTTP requests
- Enforce secure communication policies

By handling encryption at the proxy level, backend servers are protected from direct exposure while maintaining secure client communication.

---

## Proxy Functionalities Related to Security

An NGINX proxy can be configured to:
- Accept only encrypted traffic
- Deny or redirect non-encrypted requests
- Act as a protective layer between clients and backend services

---

## NGINX Proxy for Compression and Streaming

NGINX can optimize data transfer between servers and clients.

### Compression
- Large responses such as images, videos, and text files can be compressed
- Compression reduces bandwidth usage
- Faster content delivery improves user experience

### Segmentation (Chunked Responses)

NGINX supports sending responses in chunks instead of transmitting entire files at once.

This allows:
- Faster start of content playback (e.g., video streaming)
- Efficient handling of large files
- Improved performance for clients with limited bandwidth

---

## Summary

NGINX is a versatile and powerful tool that can act as both a web server and a reverse proxy. When used as a proxy, it centralizes traffic management and provides critical functionalities such as load balancing, caching, security enforcement, encryption, compression, and streaming.

By placing NGINX in front of backend servers, organizations can build scalable, secure, and high-performance web architectures.
