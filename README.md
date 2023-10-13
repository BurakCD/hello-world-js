# Local DevOps Case

SERVER NAMES  
* Server-1  
* Server-2  
* Server-3  
NOTES  
* All below operations should be done as IaC (Infrastructure as Code)  
TOOLS  
* Virtualbox  
* Linux operation system  
* Kubernetes  
* Jenkins  
* Docker  
STEPS  
* Install virtualbox in your local PC.  
* Create 3 VM with any linux operation system in virtualbox.  
* Kubernetes cluster Installation with 1 master and 1 node (You can use the Server-1 and Server-2)  
* Jenkins installation in Server-3  
* Docker registry installation in Server-3  
* Jenkins pipeline project description:  
    - Create an application image with Dockerfile. (Expected to serve "Hello World" in browser. Free of Language (Python dJango, Node Js etc..))  
    - Push the step a docker image to docker registry which you installed Server -3.  
    - Deploy this docker image to kubernetes cluster.  
    - Perform all step operations a-b-c  in jenkinsfile  


## Kurulumlar
Kurulum için gerekli olan toolların kurulumunu içeren shell scriptleri aşağıdaki Github Reposunda bulunmaktadır.
Sunucular Ubuntu server live - 22.04 LTS
JDK sürümü:     jdk-17jdk
Jenkins sürümü: jenkins-latest(2.414.2)
Docker sürümü:  docker-latest(24.0.6)
Docker-registry sürümü: registry:2



Docker registry ise docker-compose dosyası ile kurulabilir.
gerekli kurulum ve oluşturmalar yukarıda verilen sh dosyalarında yer almaktadır. 

## Notlar
Bütün konfigürasyon dosyalarını(Dockerfile, Jenkinsfile, kubernetesconfig-yaml) tek bir repoya koyacağım için jenkinsfile dosyasını da bu şekilde konfigüre ettim.

Jenkinsfile içindeki klasör konumlarını kendi ortamınıza göre şekillendirmeli ve ssh agent ile bağlanan sunucunun bilgilerini ssh key ile credential listesine eklemeniz gerekmektedir.
