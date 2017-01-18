# circleci-sphinx-s3
Example environment of sphinx rendering and syncing with s3 bucket on Docker image on CircleCI's Docker

## Memo
### Docker
```
docker build -t ccss .
```

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