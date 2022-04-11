
default: build

get:
	go get

build:
	go build cmd/qrc/qrc.go

cross:
	make linux_arm64
	make linux_amd64
	make win64

linux_arm64:
	export GOOS=linux && export GOARCH=arm64 && go build -o qrc_linux_arm64  cmd/qrc/qrc.go

linux_amd64:
	export GOOS=linux && export GOARCH=amd64 && go build -o qrc_linux_amd64  cmd/qrc/qrc.go

win64:
	export GOOS=windows && export GOARCH=amd64 && go build -o qrc_windows_amd64.exe  cmd/qrc/qrc.go