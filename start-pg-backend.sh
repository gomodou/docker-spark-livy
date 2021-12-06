version: '2.1'
services:
   # $ PGPASSWORD=123456 psql -h "localhost" -p 54322 -U postgres modou
    postgres:
        image: postgres:9.6
        ports:
            - 54322:5432
        environment:
            - POSTGRES_USER=postgres
            - POSTGRES_PASSWORD=123456
            - POSTGRES_DB=modou
            - PGDATA=/var/lib/postgresql/data
        volumes:
            - ./pgdata:/var/lib/postgresql/data
            - ./db:/db/
