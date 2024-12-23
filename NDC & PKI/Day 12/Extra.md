### **Cryptocurrency**

- **Definition**: Cryptocurrency is a digital or virtual currency secured by cryptography, making it nearly impossible to counterfeit or double-spend.
    
- **Key Features**:
    
    1. **Decentralization**: Operates on decentralized networks (e.g., blockchain).
    2. **Transparency**: Transactions are recorded on a public ledger, ensuring transparency.
    3. **Security**: Utilizes cryptographic algorithms for secure transactions.
    4. **Anonymity**: Allows users to make transactions without revealing personal identity.
- **Popular Cryptocurrencies**:
    
    - Bitcoin (BTC)
    - Ethereum (ETH)
    - Ripple (XRP)
    - Litecoin (LTC)
- **Uses**:
    
    - Online payments
    - Investment opportunities
    - Decentralized finance (DeFi) applications

---

### **XCA Lab with 2 Sub CAs for Hosting 2 Websites**

**Objective**:  
Host two websites on the same server, each secured with certificates signed by two different Sub CAs.

**Steps**:

1. **Set Up XCA**:
    
    - Install XCA (X Certificate and Key Management).
    - Create a Root CA using XCA to act as the trust anchor.
2. **Create Two Sub CAs**:
    
    - Generate private keys and self-signed certificates for two Sub CAs under the Root CA.
    - Sub CA 1: For website 1.
    - Sub CA 2: For website 2.
3. **Generate Certificate Signing Requests (CSRs)** for Websites:
    
    - For each website, create a private key and CSR:
        
        ```bash
        openssl req -new -key site1.key -out site1.csr
        openssl req -new -key site2.key -out site2.csr
        ```
        
4. **Sign CSRs Using Sub CAs**:
    
    - Use Sub CA 1 to sign the CSR for website 1:
        
        ```bash
        openssl ca -in site1.csr -out site1.crt -cert subca1.pem -keyfile subca1.key
        ```
        
    - Use Sub CA 2 to sign the CSR for website 2:
        
        ```bash
        openssl ca -in site2.csr -out site2.crt -cert subca2.pem -keyfile subca2.key
        ```
        
5. **Configure Apache (or NGINX)** to Host Two Websites:
    
    - Set up two virtual hosts:
        - One pointing to website 1 using `site1.crt` and `site1.key`.
        - Another pointing to website 2 using `site2.crt` and `site2.key`.
6. **Test Setup**:
    
    - Ensure both websites can be accessed securely via HTTPS, with their respective certificates issued by Sub CA 1 and Sub CA 2.

---

### **Interview Question: How Does the Internet Work?**

**Simple Explanation**:

- The Internet is a global network of interconnected devices that communicate using standardized protocols like **TCP/IP**.

**Key Components**:

1. **Devices**: Computers, smartphones, and servers connect to the internet.
2. **Protocols**:
    - **IP (Internet Protocol)**: Responsible for addressing and routing data packets between devices.
    - **TCP (Transmission Control Protocol)**: Ensures reliable data transfer by breaking data into packets and reassembling them.
3. **DNS (Domain Name System)**: Translates human-readable domain names (e.g., `www.google.com`) into IP addresses.
4. **ISPs (Internet Service Providers)**: Provide access to the internet.
5. **Routers and Switches**: Direct data packets to their destination efficiently.

**Step-by-Step Overview**:

1. You enter a URL (e.g., `www.google.com`) in your browser.
2. The browser contacts a **DNS server** to resolve the domain name into an IP address.
3. Your device sends a request to the server hosting the website using **HTTP/HTTPS**.
4. The server processes the request and sends back the requested data (e.g., a webpage).
5. The browser displays the webpage on your screen.

**Key Concepts**:

- **Packets**: Data is broken into small chunks called packets for transmission.
- **Routing**: Routers determine the best path for packets to travel across the network.
- **Protocols**: Ensure communication is reliable, secure, and efficient.

---
