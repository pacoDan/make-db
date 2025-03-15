# Define los nombres de los archivos docker-compose
MYSQL_COMPOSE_FILE = install-mysql.yml
POSTGRES_COMPOSE_FILE = install-postgres.yml
SQLSERVER_COMPOSE_FILE = install-sqlserver.yml

# Comando para levantar el servicio
run:
	@echo "Levantando el servicio..."
	@docker-compose -f $(MYSQL_COMPOSE_FILE) up -d

# Comando para levantar el servicio de PostgreSQL
run-postgres:
	@echo "Levantando el servicio de PostgreSQL..."
	@docker-compose -f $(POSTGRES_COMPOSE_FILE) up -d

# Comando para levantar el servicio de SQL Server
run-sqlserver:
	@echo "Levantando el servicio de SQL Server..."
	@docker-compose -f $(SQLSERVER_COMPOSE_FILE) up -d

# Comando para ver los logs en tiempo real
logs:
	@echo "Mostrando logs en tiempo real..."
	@docker-compose -f $(MYSQL_COMPOSE_FILE) logs -f

# Comando para detener y eliminar los contenedores, volúmenes e imágenes
down:
	@echo "Deteniendo y eliminando contenedores, volúmenes e imágenes..."
	@docker-compose -f $(MYSQL_COMPOSE_FILE) down --rmi all --volumes

# Comando para acceder a la consola de MySQL
mysql-console:
	@echo "Accediendo a la consola de MySQL..."
	@docker exec -it docker-miBaseDeDatos-1 mysql -uroot -p

# Comando para verificar contenedores, volúmenes e imágenes
status:
	@echo "Verificando contenedores, volúmenes e imágenes..."
	@docker ps -a
	@docker volume ls
	@docker images
