cd "$(dirname $0)"

for DIR in ../out ../storage ../work; do
    if [ -e $DIR ]; then
        DIR="$(readlink --canonicalize $DIR)"
        echo "rm -rf $DIR"
        rm -r $DIR
    fi
done

./undo-all.sh
