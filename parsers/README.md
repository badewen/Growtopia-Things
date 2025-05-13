# Parsers
collection of my parsers<br>

<b/>BEFORE RUNNING THE SCRIPT, INSTALL ALL DEPENDENCIES WITH ```pip install -r requirements.txt```</b><br>

- ```world_parser.py```<br>
  <b/>PREREQUISITES: RUN ```items_data_parser.py``` BEFORE RUNNING THIS!!</b><br>
  A script that is good enough to parse a dumped world data or the dumped ```PAKCET_SEND_MAP_DATA```'s data into <b/>json</b> <br>
  Also supports ```Operating Table```, ```Auto Surgeon```, ```Shirt Rack```, etc.<br>
  <b/>Usage</b> : ```python world_parser.py <dumped world filename>```
  
- ```items_data_parser.py``` <br>
  Script to parse items.dat into json. Only compatible for version 21.<br>
  <b/>Usage</b> : put items.dat in it and run the script. 
  
- ```common.py```<br>
  A python module that is commonly required for parsers
# Credits and References
- https://github.com/badewen/GrowDocs (forked from https://github.com/iProgramMC/GrowDocs)
- https://github.com/badewen/GTPS3 (forked from https://github.com/GENTA7740/GTPS3 . Original author https://github.com/srmotion)
- https://github.com/RebillionXX/GrowtopiaServer 
- https://github.com/SyzuTopia54y/Growtopia_ItemsDatReader 
- Thanks to [BotHax](https://github.com/sTYzaBUvqRIj) for providing me all the tile extra type and methods to get them. His discord server (https://discord.gg/z8rzEXpyTs)
- Big thanks to https://github.com/FakeLeq/growtopia-utility discovered alot of new fields
