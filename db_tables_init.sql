\c smart_scales_db;
CREATE TABLE smart_scales_data.Classes(
    name VARCHAR(128) PRIMARY KEY,
    class VARCHAR(128)
);
CREATE TABLE smart_scales_data.Products(
	id SERIAL PRIMARY KEY,
    name VARCHAR(128) UNIQUE,
	image BYTEA,
    price NUMERIC(32,2),
	discount NUMERIC(5,4)
);