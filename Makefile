
.DEFAULT: default
default: run

.RUN: run
run: stop start

.PHONY: stop
stop:
	docker stack rm etcd

.PHONY: start
start:
	docker stack deploy --with-registry-auth --compose-file docker-compose.yml etcd

.PHONY: log
log:
	docker service logs etcd_etcd1 -f &
	docker service logs etcd_etcd2 -f &
	docker service logs etcd_etcd3 -f &

.PHONY: slog
killog:
	@ps aux | grep '[e]tcd_etcd' | awk '{print $$2}' | xargs kill
