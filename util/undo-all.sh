set -e
set -u

cd "$(dirname $0)"

./undo-group.sh 1-tools
./undo-group.sh 2-libs
./undo-group.sh 3-apps
./undo-group.sh 4-kernel
