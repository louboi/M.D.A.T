# Author --> louboi [Louis Jeanes]
# Title --> Software-Install.sh
# Description --> Ensures all the required programs are installed, and installs them if required.

# To-Do list:
#
# 1. Check for sudo privileges
# 2. Check the SSH Script is executable
# 3. Check the required programs are installed:
# 3.1. Python (3.13+) 
# 3.2. Pip (25.2+)
# 3.2.1. Django
# 3.2.2. Cryptography
# 3.3. Java [OpenJDK] (24+)

# \/\/\/\/\/ Python Related Programs \/\/\/\/\/

# ========== Python ==========
# Install build Dependancies
sudo apt-get install build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev libzstd-dev

# Extract the Python file
tar xf Python-3.13.7.tar.xz

# Prepare for building and build
./python-3.13.7/configure
make
make test
sudo make install

# ========== Pip ==========
python -m ensurepip --upgrade

# ========== Django ==========
# ========== Cryptography ==========
# ========== Java ==========