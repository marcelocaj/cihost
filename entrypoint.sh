
echo "Clonning common..."
cd /code/workspace


git config --global credential.helper "/bin/bash /credentials-helper.sh"
git clone http://192.168.116.100:30000/cstc/pstb/common.git

