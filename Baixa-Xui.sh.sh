#!/bin/bash

INSTALLER="xui-1.5.13.tar.gz"
URL="https://valut.iptvtools.io/xuione/$INSTALLER"

echo ""
echo "==============================================="
echo " XUI Installer Downloader"
echo "==============================================="
echo ""

echo "[*] Downloading XUI installer package..."

# Apenas baixa o arquivo
wget --quiet --show-progress --progress=bar:force:noscroll "$URL" -O "$INSTALLER"

if [ ! -f "$INSTALLER" ]; then
    echo "[!] Download failed. Exiting."
    exit 1
fi

echo ""
echo "[*] Download completed!"
echo ""
echo " File: $(pwd)/$INSTALLER"
echo " Size: $(du -h "$INSTALLER" | cut -f1)"
echo ""
echo " To extract: tar -xzf $INSTALLER"
echo "==============================================="
echo ""
