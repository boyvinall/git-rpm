.PHONY: all
all: rpm

#------------------------------------------------
#
#	docker
#
#------------------------------------------------

CONTAINER_NAME:=git-rpm

.PHONY: docker-build
docker-build:
	docker build --rm --force-rm -t $(CONTAINER_NAME) .

.PHONY: clean
clean:
	rm -rf rpm
	docker image rm -f $(CONTAINER_NAME)

#------------------------------------------------
#
#	now build the RPM
#
#------------------------------------------------

REPO=https://src.fedoraproject.org/git/rpms/git.git
SPECFILE=git.spec

.PHONY: rpm
rpm: docker-build
	mkdir -p rpm
	docker run -ti --rm -v $$PWD/rpm:/root/rpmbuild/RPMS $(CONTAINER_NAME) /build.sh $(REPO) $(SPECFILE)
