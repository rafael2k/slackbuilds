
FIREFOXDIR=usr/lib64/firefox-VERSION
REGXPCOM=../../../$FIREFOXDIR/regxpcom
FIREFOX=../../../$FIREFOXDIR/firefox-bin

# Register the default extensions
( cd $FIREFOXDIR && ./run-mozilla.sh $REGXPCOM && ./run-mozilla.sh $FIREFOX -register )
