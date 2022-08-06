migrationUp:
           migrate -path db/migration -database "postgresql://admin:admin@localhost:5432/go_finance?sslmode=disable" -verbose up

migrationDrop:
             migrate -path db/migration -database "postgresql://admin:admin@localhost:5432/go_finance?sslmode=disable" -verbose drop

.PHONY: migrationUp migrationDrop