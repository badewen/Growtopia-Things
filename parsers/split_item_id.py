# Quickly extract item id and item name into json

# format : 
# <item id>: <item name>

from json import load

input_json = load(open("parsed_data.json", "r"))

output_file = open("item_id_list.txt", "w")

output_str = ""

for data in input_json["items"]:
    output_str = output_str + str(input_json["items"][data]["item_id"]) + ": " + input_json["items"][data]["name"] + "\n"
    
output_file.write(output_str)
output_file.close()