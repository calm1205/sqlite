# コマンド競合を回避
.PHONY: sql

ash:
	docker compose exec sqlite ash

sql:
	docker compose exec sqlite sqlite3 sqlite.db