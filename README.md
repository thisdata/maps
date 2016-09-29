# ThisData Maps

This repo contains two tileoven projects for our light and dark maps.
They are hosted on a `t2.micro` with an ELB, and found at `https://maps.thisdata.com`.

## Resources

Server:
https://github.com/cutting-room-floor/tilestream - BSD TileServer, last updated 2015

Tile Generator:
https://github.com/florianf/tileoven - BSD fork of [TileMill](https://github.com/tilemill-project/tilemill
)

## Server set up

Yes, this is jank.

```
sudo apt-get install nodejs
sudo apt-get install npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo apt-get install git

git clone https://github.com/mapbox/tilestream.git
cd tilestream
npm install

```

You can run that:
```
  ./index.js --tiles=/home/tilestream/tiles \
    --tilePort=80 \
    --host maps.thisdata.com \
    --accesslog=true
```

Copy the tiles up:
```
scp ~/Documents/MapBox/export/thisdata-light.mbtiles ubuntu@map-server:~/
```

SSH in and move them to `/home/tilestream/tiles`.

Make the server run forever
```
npm install forever -g
crontab -e

@reboot /usr/local/bin/forever start /home/tilestream/tilestream/index.js start --tiles=/home/tilestream/tiles --tilePort=80  --host maps.thisdata.com --accesslog=true
```