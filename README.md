# circleci-sphinx-s3
Example environment of sphinx rendering and syncing with s3 bucket on Docker image on CircleCI's Docker

* Using COPY & ENTRY POINT in Dockerfile
* Python 3.5 on alpine Linux

see http://circleci-sphinx-s3.s3-website-ap-northeast-1.amazonaws.com/

## Memo
### Docker
```
docker build -t ccss .
```
```
docker run --name builder ccss
docker cp builder:/root/build/ $(pwd)
```

CircleCIがexecコマンド使えないのでボツになった案
```
docker run -id --name builder ccss
docker cp $(pwd)/source/ builder:/root
docker exec -it builder /bin/ash # ログインしたい時
docker exec builder sphinx-build -b html source/ build/
docker cp builder:/root/build/ $(pwd)
```

### Sphinx
```
sphinx-build -b html source/ build/
```