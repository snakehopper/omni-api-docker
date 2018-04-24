#!/bin/sh
docker-compose exec omniapi psql --echo-all -h db -U postgres -f database/omni_db_schema.psql omni
docker-compose exec omniapi psql --echo-all -h db -U postgres -f database/omni_db_initialize_data.psql omni
