for i in $(find ./defaults -type f); do
    sh $i
done

killall cfprefsd
killall Dock
killall Finder
killall SystemUIServer
