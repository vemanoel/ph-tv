run:
	@ podman compose run --rm go run cmd/main.go

build:
	@ podman compose run --rm -e GOOS=darwin -e GOARCH=amd64 dev go build -ldflags "-s -w" -o build/darwin-amd64 cmd/main.go
	@ podman compose run --rm -e GOOS=darwin -e GOARCH=arm64 dev go build -ldflags "-s -w" -o build/darwin-arm64 cmd/main.go
	@ podman compose run --rm -e GOOS=linux -e GOARCH=amd64 dev go build -ldflags "-s -w" -o build/linux-amd64 cmd/main.go
	@ podman compose run --rm -e GOOS=linux -e GOARCH=386 dev go build -ldflags "-s -w" -o build/linux-386 cmd/main.go
	@ podman compose run --rm -e GOOS=windows -e GOARCH=amd64 dev go build -ldflags "-s -w" -o build/windows-amd64.exe cmd/main.go
	@ podman compose run --rm -e GOOS=windows -e GOARCH=386 dev go build -ldflags "-s -w" -o build/windows-386.exe cmd/main.go
