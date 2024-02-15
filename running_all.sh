declare -A running_list=(
    [DOGE]="DQPFq8Zzp89HAXxeM6LY1ya4hsy2vV5BSY"
    [LTC]="LKff4nHW6UkdKFj6SruixG4cfwUngUHyrz"
    [TRX]="TMLSJnPCRvshn1aV5zmdg2zWwg5LKgUAAj"
    [XLM]="GB2NT6CIX4X2BQI4D4I3RIV2G4J2D5KEKHAPPV66KK4NQ6MHLGSDSWXS"
)

for coin in "${!running_list[@]}"; do
    echo "$coin.rig-${running_list[$coin]}"
done
