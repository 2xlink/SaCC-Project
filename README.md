# PaYourShare main repo

#### Server Repo  
https://github.com/2xlink/PaYourShare-Server  

#### API Dienstbeschreibung
- Swagger or
- WADL

#### Securing the WS
- Authentication: token / API key
- Confidentiality: HTTPS

Client: Android  
Server: tomcat+jersey  
DB: MySQL/PostgreSQL [2]  
C-S Connection: REST/Json [1]  
S-DB Connection: JDBC/JPA?  

[1] http://www.vogella.com/tutorials/REST/article.html

[2] https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems

#### Project Setup
according to vogella ...  
 - Tomcat 8.0.28 (https://tomcat.apache.org/download-80.cgi)  
 - Jersey 2.22.1 (https://jersey.java.net/download.html)  
 - JAX-RS for REST annotation support in java
