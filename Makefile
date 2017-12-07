all:
	@packer build ubuntu.json

clean:
	@rm -rf VM/ packer_cache/

all-linux:
	@cd /usr/local && wget https://golang.org/doc/install/source?download=go1.9.2.src.tar.gz
	@tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
	@echo "export PATH=$PATH:/usr/local/go/bin" > $HOME/.profile
	@source $HOME/.profile
	@go get github.com/hashicorp/packer
	@sudo apt-get install virutalbox
	@packer build ubuntu.json