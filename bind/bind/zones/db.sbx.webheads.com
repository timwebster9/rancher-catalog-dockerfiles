;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	mars.sbx.webheads.com. admin.sbx.webheads.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; name servers - NS records
    IN      NS      mars.sbx.webheads.com.

; name servers - A records
mars.sbx.webheads.com.         IN      A      192.168.1.117

; 192.168.0.0/16 - A records
neptune.sbx.webheads.com.      IN      A      192.168.1.116
deimos.sbx.webheads.com.       IN      A      192.168.1.121
saturn.sbx.webheads.com.       IN      A      192.168.1.118
jupiter.sbx.webheads.com.      IN      A      192.168.1.119
