
echo "Clonning common..."
cd /code/workspace


git config --global credential.helper "/bin/bash /credentials-helper.sh"
git clone https://git.seceng.informatik.tu-darmstadt.de/cstc/pstb/common.git

