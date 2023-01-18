export SWAP_FILE=$(swapon --show=NAME | tail -n 1)
          sudo swapoff $SWAP_FILE
          sudo rm $SWAP_FILE
          sudo fallocate -l ${swapsize}G $SWAP_FILE
          sudo chmod 600 $SWAP_FILE
          sudo mkswap $SWAP_FILE
          sudo swapon $SWAP_FILE
free -h
