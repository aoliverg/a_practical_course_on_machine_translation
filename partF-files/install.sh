#!/bin/bash
apt-get install -y python3-pip
pip3 install requests XlsxWriter xmltodict lxml Flask nltk numpy dicttoxml PyYAML SimpleWebSocketServer websocket_client
apt-get install -y cmake build-essential pkg-config libgoogle-perftools-dev
git clone https://github.com/google/sentencepiece.git
cd sentencepiece
mkdir build
cd build
cmake ..
make -j $(nproc)
make install
ldconfig -v
pip3 install sentencepiece
git clone https://github.com/robertostling/eflomal.git
cd eflomal
make
make install
python3 setup.py install
cd ..