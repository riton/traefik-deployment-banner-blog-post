deploy-traefik:
	docker compose --file docker-compose-traefik.yml up -d

deploy-whoami:
	docker compose --file docker-compose-whoami.yml up -d --scale whoami=2

deploy-whoami-maintenance-banner:
	docker compose --file docker-compose-whoami-maintenance-banner.yml up -d --build

deploy: deploy-traefik deploy-whoami

show-traefik-logs:
	docker compose --file docker-compose-traefik.yml logs --tail 100 -f traefik

clean-traefik:
	docker compose --file docker-compose-traefik.yml down -v

clean-whoami:
	docker compose --file docker-compose-whoami.yml down -v

clean-whoami-maitenance-banner:
	docker compose --file docker-compose-whoami-maintenance-banner.yml down -v

clean: clean-whoami clean-whoami-maitenance-banner clean-traefik
