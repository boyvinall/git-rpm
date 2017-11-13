FROM centos

# generic RPM tools
COPY build.sh /
RUN yum install -y rpmdevtools kernel-devel @"Development Tools" && \
    rpmdev-setuptree

# git pre-requisites
RUN yum install -y \
    apr-util-bdb \
    asciidoc \
    bash-completion \
    cvs \
    cvsps \
    desktop-file-utils \
    emacs \
    expat-devel \
    gettext \
    gnupg \
    gnupg2 \
    highlight \
    httpd \
    jgit \
    libcurl-devel \
    libgnome-keyring-devel \
    libsecret-devel \
    linkchecker \
    openssl-devel \
    pcre \
    pcre2-devel \
    perl-CGI \
    perl-DBD-SQLite \
    perl-Digest-MD5 \
    perl-ExtUtils-MakeMaker \
    perl-generators \
    perl-IO-Tty \
    perl-MailTools \
    perl-tests \
    python2-devel \
    subversion \
    subversion-perl \
    systemd \
    time \
    xmlto \
    zlib-devel