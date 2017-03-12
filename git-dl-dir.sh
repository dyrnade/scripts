case "$1" in
  "--help")
    echo "Usage: ./script.sh git-repo-url folder-to-save"
    ;;
  *)
    DIRNAME=$1
    SVNDIR=$(echo $DIRNAME | sed "s/tree\\/master/trunk/")
    svn export $SVNDIR $2
    ;;
esac
