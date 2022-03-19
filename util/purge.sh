cd "$(dirname $0)"

for DIR in ../out ../storage ../work ../.swd-cache; do
    if [ -e $DIR ]; then
        DIR="$(readlink --canonicalize $DIR)"
        echo "rm -rf $DIR"
        rm -r $DIR
    fi
done
