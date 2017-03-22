docker run --name newa --rm -p 8080:80 \
-v /Users/noon/docker/newa/newa:/newa \
-v /Users/noon/docker/newa/ndfd:/ndfd \
-v /Users/noon/docker/newa/logs:/logs \
newa:v1.0
