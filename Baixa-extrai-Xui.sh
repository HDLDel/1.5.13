#!/bin/bash

INSTALLER="xui-1.5.13.tar.gz"
EXTRACT_DIR="xui-installer-files"
URL="https://valut.iptvtools.io/xuione/$INSTALLER"

echo ""
echo "==============================================="
echo " XUI Installer Downloader"
echo " Provided by IPTVTOOLS.io"
echo "==============================================="
echo ""

echo "[*] Creating download directory..."
mkdir -p "$EXTRACT_DIR"

echo "[*] Downloading XUI installer package..."

# Download com verificação de erro
if ! wget --quiet --show-progress --progress=bar:force:noscroll "$URL" -O "$EXTRACT_DIR/$INSTALLER" 2>&1; then
    echo "[!] Download failed. Exiting."
    exit 1
fi

if [ ! -f "$EXTRACT_DIR/$INSTALLER" ]; then
    echo "[!] Download failed. File not found."
    exit 1
fi

echo ""
echo "[*] Extracting files..."
if ! tar -xzf "$EXTRACT_DIR/$INSTALLER" -C "$EXTRACT_DIR" 2>/dev/null; then
    echo "[!] Extraction failed!"
    exit 1
fi

echo "[*] File structure:"
find "$EXTRACT_DIR" -type f -name "*" | sort

echo ""
echo "==============================================="
echo " Download completed successfully!"
echo ""
echo " Files downloaded to: $(pwd)/$EXTRACT_DIR"
echo ""
echo " To install later, run:"
echo "     cd $EXTRACT_DIR && chmod +x install && ./install"
echo "==============================================="
echo ""
