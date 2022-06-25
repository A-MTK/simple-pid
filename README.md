# simple-pid

原作: https://github.com/m-lundberg/simple-pid

## 建置 Docker 環境
需求: docker

構建 Docker 環境
```
./buold-env.sh
```

## 建置 Apt Package
構建 deb 檔案
```
./build-deb.sh
```

能在 `dist` 資料夾中找到輸出檔
```
├── dist
│   ├── python3-simple-pid_1.0.1-1_all.deb <--- 目標檔案
│   ├── simple-pid-1.0.1
│   ├── simple-pid_1.0.1-1.debian.tar.xz
│   ├── simple-pid_1.0.1-1.dsc
│   ├── simple-pid_1.0.1-1_arm64.buildinfo
│   ├── simple-pid_1.0.1-1_arm64.changes
│   ├── simple-pid_1.0.1-1_source.buildinfo
│   ├── simple-pid_1.0.1-1_source.changes
│   └── simple-pid_1.0.1.orig.tar.gz
```
