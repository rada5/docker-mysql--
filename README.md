# play-with-docker-mysql-
play-with-docker で試す

## code server の用意
```
docker run -d -p 8080:8080 --env PASSWORD="aaaa" \
    --name=vscode \
    --user $(id -u):$(id -g) \
    -v "$PWD:/home/coder/project" \
    codercom/code-server
```

```
ssh-keygen -t rsa
chmod 400 ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

```

公開鍵をGitHubにアップする

```
touch ~/.ssh/config
vim ~/.ssh/config
```

```
Host github github.com
  HostName github.com
  IdentityFile ~/.ssh/id_git_rsa #ここに自分の鍵のファイル名
  User git
```

## cloneしてきて試す

```
docker-compose down
docker-compose up
```

```
docker-compose stop db2
docker-compose rm -f db2
docker-compose up -d db2
docker-compose logs -f db2
```
