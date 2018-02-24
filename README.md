# ds-httpd-vsftpd
# Aquest repositori conté supervisor, httpd i vsftpd.


### Els arxius de configuracions del supervisor es troben en el directori "container-files"

### L'arxiu de configuració del servidor vsftpd es troba a l'arxiu vsftpd.conf.

> El servidor vsftpd, el seu fitxer de configuració, està configurat per tal que els usuaris anònims puguin accedir a ell, pujar arxius i baixar-los. 

> El directori de l'usuari anònim és /var/lftp 

### Directori "html"

> Conté el fitxer index.html. Aquest fitxer es pot modificar o pujar un de nou, al gust de l'usuari.


## Per arrencar el contenidor es pot fer de la següent manera:

docker run -p 8080:80 -p 20:20 -p 21:21 -p 9001:9001 -d jackyalt/ds-httpd-vsftpd

* HTTP
  * 8080:80
* FTP
  * 20:20
  * 21:21
* Supervisor
  * 9001:9001

> Per defecte: usuari: jacky | password: iaw

## Per arrencar el contenidor amb altres credencials

docker run -p 8080:80 -p 20:20 -p 21:21 -p 9001:9001 -e USER=username -e PASSWORD=passwd -d jackyalt/ds-httpd-vsftpd


### Exemple per accedir als següents serveis:

> Per accedir al supervisor, accedim des del navegador ex: la.teva.ip:9001
> Per accedir al ftp: ftp://la.teva.ip
> Per accedir al nostre servidor web: la.teva.ip:8080


