BUILDDIR=$(shell pwd)/build

all: $(BUILDDIR) Smartian

clean:
	@dotnet clean -c Release
	@rm -rf $(BUILDDIR)

$(BUILDDIR):
	@mkdir -p $(BUILDDIR)

Smartian:
	@dotnet dev-certs https --trust
	@dotnet build -c Release -o $(BUILDDIR)

.PHONY: all clean Smartian
