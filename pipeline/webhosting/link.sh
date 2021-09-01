find . -name '*md' | while read mdfile; do
    filename=$(basename "${mdfile%.*}").ee.md
    if [ -f "$filename" ] ; then
        echo "Not linked $mdfile; link exists"
    else
        ln -s "$mdfile" "$filename"
        echo "Linked $mdfile to $filename"
    fi
done