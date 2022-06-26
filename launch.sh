sh spin_down.sh 2> /dev/null

tmux new-session -d -s "droplet" meteor --settings droplet.json --port 3000
tmux new-session -d -s "stride_local" meteor --settings stride_local.json --port 3005
tmux new-session -d -s "gaia_local" meteor --settings gaia_local.json --port 3010


sleep 10

open http://localhost:3000
open http://localhost:3005
open http://localhost:3010
