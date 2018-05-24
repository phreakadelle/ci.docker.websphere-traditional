# This file is a copy of
# https://github.com/WASdev/ci.docker.websphere-traditional/blob/master/developer/profile/Dockerfile
#
# Its patched to create an insecure profile
FROM ibmcom/websphere-traditional:8.5.5.12-install

USER root

# Copy in the patched version of the create_profile.sh
COPY create_profile.sh /work/create_profile
RUN chown -R was:was /work  && \
    chmod u+x /work/create_profile
    
USER was

ARG PROFILE_NAME=AppSrv01
ARG CELL_NAME=DefaultCell01
ARG NODE_NAME=DefaultNode01
ARG HOST_NAME=localhost
ARG SERVER_NAME=server1
ARG ADMIN_USER_NAME=wsadmin

ENV PROFILE_NAME=$PROFILE_NAME \
  SERVER_NAME=$SERVER_NAME \
  ADMIN_USER_NAME=$ADMIN_USER_NAME

RUN /work/create_profile

CMD ["/work/start_server"]