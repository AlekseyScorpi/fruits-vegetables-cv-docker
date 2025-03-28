Please, before run specify .env file:
-
- POSTGRES_USER={postgres_user} (example: postgres)
- POSTGRES_DB={postgtres_db} (example: default)
- POSTGRES_PASSWORD={your_postgres_password} (example: python-fruits)
***
### Build container
```
docker build --build-arg SMART_SCALES_PASSWORD={your_password} -t {your_image_name} .
```
***
### Run container
```
docker run --env-file .env --name {your_container_name} -p 5433:5432 -d {your_image_name}
```
