ALTER TABLE declarations ADD COLUMN touched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL;
ALTER TABLE declarations MODIFY COLUMN server_token CHAR(40) AS (SHA1(CONCAT(identifier, type, payload, created_at, touched_at))) STORED NOT NULL;