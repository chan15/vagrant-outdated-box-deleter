# Description

We usually use vagrant box update to update the latest box, but we can only delete outdated box by key in `vagrant box remove ubuntu/xneial43 --box-version xxxxx` one by one, therefore I created this shell script to auto clean outdated box.

# How to use

Just typing `sh clean_box.sh $BOXNAME` and all done.
