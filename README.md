## Flask-hello-world uygulamasının deckorize, build ve deploy edilmesi

 https://github.com/gozdde/flask-hello-world

 Flask framework ile oluşturulmuş web uygulamasını gerekli requirements.txt
 dosyası ile localhostumuza indiriyoruz.
 "Dockerfile" dosyasını oluşturuyoruz. 
 docs.docherhub.com sitesinden güncel .deb paketlerini kurdum.
 

  Dockerfile'dan image oluşturmak için docker build . komutunu çalıştırıyoruz.
  
  Dockerfile dosyası bulunduğumuz dizinde olmalı. Bu dizini aşağıdaki komutta
  belirtiyorum ki oluşan reponun adı olsun.
#### docker build . -t flask-hello-world/hello.py 
    
  container'ın içine girmek için docker run komutunu aşağıdaki gibi
  çalıştırıyoruz. Burada ben kendi "python3 hello.py" komutuyla uygulamayı up 
  yapıyoruz. Web browserımızdan localhost:9000 çalıştırarak "Hello World!" 
  görebiliriz.

#### docker run -it -p 9000:9000 flaskhelloworld_hello.py /bin/bash 
  
  
  Bu işlemleri docker-compose kullanarak daha kolay bir şekilde yapmak için
  docker-compose.yaml dosyası oluşturdum. docker-compose paketini debian repodan  indirdim.
  
  Dockerfile dosyasının bulunduğu dizinde 
#### docker-compose up 
  komutunu çalıştırarak uygulamayı up yapabiliriz.


