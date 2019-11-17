# Download the required mysql base image
FROM mysql

# Copy the schema file to /docker-entrypoint-initdb.d/
COPY schema.sql /docker-entrypoint-initdb.d/


# set the environment variable
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=app_db


#  EXPOSE PORT 3306
EXPOSE 3306