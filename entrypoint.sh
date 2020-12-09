
echo "Clonning common..."
cd /code/workspace


git config --global credential.helper "/bin/bash /credentials-helper.sh"
git clone http://localhost:30000/cstc/pstb/common.git

