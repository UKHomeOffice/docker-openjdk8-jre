# Security patches etc. managed centrally
# =======================================

FROM quay.io/ukhomeofficedigital/centos-base:latest

# Set correct environment variables.
ENV HOME /root
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV YUM_CMD="yum install -y java-1.8.0-openjdk && yum clean all"

# Add ONBUILD trigger so we keep the java-1.8.0 updated
# on subsequent downstream (child) images
ONBUILD RUN eval "${YUM_CMD} || ${YUM_CMD}"

# Install Open Java 8 (JRE ONly)
# ==============================

# Set correct environment variables.
ENV	HOME /root
ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8

# See https://github.com/docker/docker/issues/10180# for why the strange yum!
# The JDK is the devel package - this really is the JRE!
RUN eval "${YUM_CMD} || ${YUM_CMD}"

ENV JAVA_HOME /usr/lib/jvm/jre-openjdk

VOLUME ["/code"]
WORKDIR /code
