# Holberton School Reconnaissance Report

---

## **Target: `holbertonschool.com`**

This report provides an overview of the infrastructure and technologies behind the `holbertonschool.com` domain. The data was gathered using passive reconnaissance techniques.

---

## **IP Ranges**

The following IP addresses are associated with `holbertonschool.com` and its subdomains. These are hosted on **AWS (Amazon Web Services)** servers for scalability and reliability:

- `75.2.70.75`
- `99.83.190.102`
- `3.233.126.24`
- `34.234.52.18`
- `52.206.163.162`
- `52.47.143.83` *(Paris, France; Amazon Data Services France)*
- `35.180.27.154` *(Paris, France; Amazon Data Services)*

---

## **Technologies and Frameworks**

The following technologies and frameworks were observed in use by `holbertonschool.com`:

1. **Web Servers**
   - **Nginx** is the primary web server, with two versions detected:
     - `1.18.0`: Likely running on Ubuntu systems.
     - `1.21.6`: Found on subdomains for enhanced performance and security.

2. **SSL Certificates**
   - Managed by **Let’s Encrypt**, providing automated HTTPS security.
   - Supported TLS Versions:
     - **TLSv1.2** (Standard encryption).
     - **TLSv1.3** (Enhanced encryption).

3. **Hosting**
   - Hosted entirely on **AWS**, with instances in the **eu-west-3 (Paris, France)** region.
   - Subdomains, such as `yrly2.holbertonschool.com`, are tied to Amazon EC2 instances.

4. **Security Features**
   - Key HTTP security headers detected:
     - `Strict-Transport-Security: max-age=31536000`: Enforces HTTPS for one year.
     - `X-Frame-Options: SAMEORIGIN`: Protects against clickjacking.
     - `X-Content-Type-Options: nosniff`: Prevents MIME type sniffing.
     - `X-XSS-Protection: 0`: Indicates reliance on browser-level XSS defenses.

5. **Traffic Redirection**
   - **301 Moved Permanently**: Redirects HTTP traffic to secure HTTPS endpoints to maintain encryption.

6. **Subdomains**
   - **yrly2.holbertonschool.com**
     - Securely redirects to HTTPS.
     - Hosted on `ec2-52-47-143-83.eu-west-3.compute.amazonaws.com`.

---

## **Observations**

- Hosting on **AWS** ensures scalability and reliability for Holberton School’s web infrastructure.
- The use of **Let’s Encrypt SSL certificates** reflects automation and proper HTTPS security management.
- Adoption of modern TLS versions (**TLSv1.2** and **TLSv1.3**) ensures secure encryption.
- Security headers like `Strict-Transport-Security` and `X-Frame-Options` are implemented, showing adherence to good security practices.
- The use of `X-XSS-Protection: 0` suggests reliance on browser-side protections, but server-side measures could further enhance security.

---

## **Methodology**

This report was created using passive reconnaissance techniques, including:

1. **Shodan**: For identifying IP addresses, technologies, and hosting details.
2. **DNS Analysis**: Commands like `dig` and `host` were used to gather DNS records and resolve subdomains.
3. **HTTP Header Inspection**: Using `curl` to analyze web server configurations, headers, and redirections.

No intrusive methods were used, ensuring compliance with ethical guidelines.

---

## **Conclusion**

Holberton School’s infrastructure demonstrates a commitment to modern and secure practices, with scalable hosting via AWS, automated SSL management through Let’s Encrypt, and robust HTTPS enforcement. While current configurations are solid, adding server-side XSS protections could enhance overall security.

---

## **References**

- **DNS Tools**: `dig`, `host`
- **HTTP Analysis**: `curl`
- **Cloud Hosting**: AWS documentation
- **SSL Management**: Let’s Encrypt

---