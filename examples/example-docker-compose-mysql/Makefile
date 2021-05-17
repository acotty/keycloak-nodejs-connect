.PHONY: status up up2 upMAX down downMAX stop stopMAX commandsdocker-compose 

status:
	docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Command}}\t{{.Ports}}"

UP=docker-compose -f docker-compose-keycloak-mysql.yml up -d 

up:
	$(UP) keycloak_SA

up2:
	$(UP) keycloak_SA portainer

upMAX:
	$(UP) portainer mysql adminer 
	sleep 10
	$(UP) keycloak

down:
	docker-compose -f docker-compose-keycloak-mysql.yml down --remove-orphans --volumes

stop:
	docker-compose -f docker-compose-keycloak-mysql.yml  stop

commands:
	@echo "============================================================="
	@echo "Common make commands :                                       "
	@echo "                                                             "
	@echo "    status                                                   "
	@echo "                                                             "
	@echo "    up  up2  ipmax       down        stop                    "
	@echo "                                                             "
	@echo "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"
	@echo " Notes:                                                      "
	@echo " 1) up2 starts Keycloak and Portainer                        "
	@echo " 2) upmax starts Keycloak, MySQL and Portainer               "
	@echo " 3) When swapping betwen up/up2 and upmax you must make down "
	@echo "============================================================="
	