#!/bin/bash -e

install -v -d                                           ${ROOTFS_DIR}/etc/wpa_supplicant
install -v -m 600 files/wpa_supplicant.conf             ${ROOTFS_DIR}/etc/wpa_supplicant/

install -v -m 644 files/default                         ${ROOTFS_DIR}/etc/nginx/sites-available/

install -v -m 644 files/shellinabox                     ${ROOTFS_DIR}/etc/default/
mv ${ROOTFS_DIR}/etc/shellinabox/options-available/00+Black\ on\ White.css ${ROOTFS_DIR}/etc/shellinabox/options-available/00_Black\ on\ White.css
mv ${ROOTFS_DIR}/etc/shellinabox/options-available/00_White\ On\ Black.css ${ROOTFS_DIR}/etc/shellinabox/options-available/00+White\ On\ Black.css
rm ${ROOTFS_DIR}/etc/shellinabox/options-enabled/00*
ln -s /etc/shellinabox/options-available/00_Black\ on\ White.css ${ROOTFS_DIR}/etc/shellinabox/options-enabled/00_Black\ on\ White.css
ln -s /etc/shellinabox/options-available/00+White\ On\ Black.css ${ROOTFS_DIR}/etc/shellinabox/options-enabled/00+White\ On\ Black.css
