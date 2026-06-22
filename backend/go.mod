# install Go first if not present
sudo apt install golang-go -y

# upgrade the vulnerable dependency
go get golang.org/x/crypto@v0.31.0
go mod tidy
