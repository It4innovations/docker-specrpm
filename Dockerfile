FROM centos:centos7

MAINTAINER Marek Chrastina <marek.chrastina@vsb.cz>

RUN yum clean all && yum update -y
RUN yum -y install wget git dos2unix rpmlint rpm-build rpmdevtools
ADD ./speclint4git.sh /root
ADD ./spec2rpm4git.sh /root
ADD ./speccmprepo.sh /root
RUN ln -s /root/speclint4git.sh /usr/bin/speclint4git
RUN ln -s /root/spec2rpm4git.sh /usr/bin/spec2rpm4git
RUN ln -s /root/speccmprepo.sh /usr/bin/speccmprepo
RUN chmod a+x /root/speclint4git.sh
RUN chmod a+x /root/spec2rpm4git.sh
RUN chmod a+x /root/speccmprepo.sh
