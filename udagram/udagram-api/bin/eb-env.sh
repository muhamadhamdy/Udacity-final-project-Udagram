eb open udagram-m-hamdy-dev 
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgre2022
eb setenv POSTGRES_DB=ebdb
eb setenv POSTGRES_HOST=udagram-m-hamdy-rds.c9ivzb6vpn4o.us-east-1.rds.amazonaws.com
eb setenv AWS_REGION=us-east-1
eb setenv AWS_PROFILE=default
eb setenv DB_PORT=5432
eb setenv APP_PORT=8090
eb setenv AWS_BUCKET=udagram-m-hamdy-s3-001
eb setenv URL=http://udagram-m-hamdy-dns.us-east-1.elasticbeanstalk.com:8090/
eb setenv JWT_SECRET=bdh3j5f678g9v06fc42h1g1g5f8n9j90df1fd9bfd
eb setenv AWS_ACCESS_KEY_ID=AKIAUDT7GXFKUA4RJZEN
eb setenv AWS_SECRET_ACCESS_KEY=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


eb open udagram-m-hamdy-dev 
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgre2022 POSTGRES_DB=ebdb POSTGRES_HOST=udagram-m-hamdy-rds.c9ivzb6vpn4o.us-east-1.rds.amazonaws.com AWS_REGION=us-east-1 AWS_PROFILE=default DB_PORT=5432 APP_PORT=8090 AWS_BUCKET=udagram-m-hamdy-s3-001 URL=http://udagram-m-hamdy-dns.us-east-1.elasticbeanstalk.com:8090/ JWT_SECRET=bdh3j5f678g9v06fc42h1g1g5f8n9j90df1fd9bfd AWS_ACCESS_KEY_ID=AKIAUDT7GXFKUA4RJZEN AWS_SECRET_ACCESS_KEY=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