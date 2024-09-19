FROM quay.io/fedora/fedora-bootc:40

RUN dnf -y install \
  cloud-init \
  podman \
  skopeo \
  buildah \
  git \
  neovim \
  tcpdump

COPY systemd/bootc-generic-growpart.service.d/override.conf \
  /etc/systemd/system/bootc-generic-growpart.service.d/override.conf
COPY systemd/bootc-fetch-apply-updates.timer.d/override.conf \
  /etc/systemd/system/bootc-fetch-apply-updates.timer.d/override.conf
