# Pull sonarqube image from docker hub
docker pull sonarqube

# run sonarqube and POSTGRES container
docker run -d --name sonarqube-db -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -e POSTGRES_DB=sonarqube postgres:alpine

# check the services
docker ps

# Run SonarQube server with the linked postgressql container which we have created above
docker run -d --name sonarqube -p 9000:9000 --link sonarqube-db:db -e SONAR_JDBC_URL=jdbc:postgresql://db:5432/sonarqube -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar sonarqube

#check that sonarqube container is running
docker ps

#Access sonarqube on browser (localhost:9000) ENSURE PORT 9000 IS OPEN
#Default username and login for sonarqube is admin for both username and password
#Change password as prompted once you login, old password will be admin then enter new password
#Once logged into sonarqube click on "create a local project"
#Give project name (name must match project name on github "vpeofile-project"
#give key (you can leave the default key "sample")
#Click on "next"
#Tick use global setting
Scroll down and click on creat project
#Choose locally or jenkins
