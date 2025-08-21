[1mdiff --git a/docker/personal/docker-compose.yaml b/docker/personal/docker-compose.yaml[m
[1mindex 1c6d7a1..1859541 100755[m
[1m--- a/docker/personal/docker-compose.yaml[m
[1m+++ b/docker/personal/docker-compose.yaml[m
[36m@@ -91,8 +91,11 @@[m [mservices:[m
     container_name: pi-hole[m
     network_mode: "host"[m
     image: pihole/pihole:latest[m
[31m-    profiles:[m
[31m-      - donotstart[m
[32m+[m[32m    #ports:[m
[32m+[m[32m    #  - 53:53[m
[32m+[m[32m    #  - 8080:8080[m
[32m+[m[32m    #profiles:[m
[32m+[m[32m    #  - donotstart[m
     dns:[m
       - 1.1.1.1[m
     environment:[m
[36m@@ -103,7 +106,7 @@[m [mservices:[m
       FTLCONF_DHCP_ACTIVE: true[m
       FTLCONF_webserver_port: 8080[m
       FTLCONF_WEB_BIND_ADDR: "0.0.0.0"[m
[31m-      FTLCONF_REPLY_ADDR4: "192.168.1.99"[m
[32m+[m[32m      #FTLCONF_REPLY_ADDR4: "192.168.1.99"[m
       FTLCONF_DHCP_START: "192.168.1.2"[m
       FTLCONF_DHCP_END: "192.168.1.100"[m
       FTLCONF_DHCP_ROUTER: "192.168.1.1"[m
[36m@@ -126,7 +129,7 @@[m [mservices:[m
       traefik.enable: "true"[m
       traefik.http.routers.pihole-http.entrypoints: "web"[m
       traefik.http.routers.pihole-http.rule: "Host(`192.168.1.99`)"[m
[31m-      traefik.http.services.pihole.loadbalancer.server.port: "80"[m
[32m+[m[32m      traefik.http.services.pihole.loadbalancer.server.port: "8080"[m
 [m
   syncthing:[m
     image: syncthing/syncthing:edge[m
