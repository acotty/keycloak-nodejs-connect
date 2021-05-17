.PHONY: status up up2 down stop commands

status:
	docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Command}}\t{{.Ports}}"

UP=docker-compose up -d

up:
	$(UP) keycloak

up2:
	$(UP) keycloak portainer

down:
	docker-compose down --remove-orphans --volumes

stop:
	docker-compose stop

commands:
	@echo "==================================================="
	@echo "Common make commands :                             "
	@echo "    status                                         "
	@echo "    up        up2        down        stop          "
	@echo "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  "
	@echo " Notes:                                            "
	@echo " 1) up2 starts Keycloak and Portainer              "
	@echo "==================================================="
	