#!/bin/bash

INSTALLER="xui-1.5.13.tar.gz"
URL="https://valut.iptvtools.io/xuione/$INSTALLER"

echo ""
echo "==============================================="
echo " XUI Installer Downloader"
echo " Provided by IPTVTOOLS.io"
echo "==============================================="
echo ""

echo "[*] Downloading XUI installer package..."

wget --quiet --show-progress --progress=bar:force:noscroll "$URL" -O "$INSTALLER" 2>&1

if [ ! -f "$INSTALLER" ]; then
    echo "[!] Download failed. Exiting."
    exit 1
fi

echo ""
echo "[*] Extracting files..."
tar -xzf "$INSTALLER" || { echo "[!] Extraction failed!"; exit 1; }

echo "[*] Cleaning up..."
rm -f "$INSTALLER"

echo "[*] Setting permissions..."
chmod +x install

echo ""
echo "==============================================="
echo " Download completed successfully."
echo ""
echo " To start the XUI installation, run the command:"
echo ""
echo "     ./install"
echo ""
echo " Follow the on-screen instructions."
echo "==============================================="
echo ""
