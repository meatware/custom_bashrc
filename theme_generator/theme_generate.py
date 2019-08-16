import os, sys
from itertools import permutations

col_dict = {}
col_names = []

col_defs = "./colour_defs.txt"
#col_defs = "./colour_defs_large.txt"
with open(col_defs, 'r') as FHO:
    for line in FHO:
        split_line = line.split()
        #print(split_line, len(split_line))

        if len(split_line) == 3:
            kv_split = split_line[0].split("=")
            #print(kv_split)
            col_key = kv_split[0].strip("\'")
            col_val = kv_split[1].strip("\'")

            #print(col_key, col_val)

            col_dict[col_key] = col_val
            col_names.append(col_key)

print()

# remove colours taht don't work on black screen
# (large list) del_list = ["Black", "BBlack", "IBlack", "BIBlack", "White", "BWhite", "IWhite", "BIWhite"] #, "", "", "", "", "", "", ""]
del_list = ["GRAY", "DKGRAY", "HIBlack", "HIWhite"] 
for rm_col in del_list:
    col_names.remove(rm_col)

#for key, value in col_dict.items():
    #print(key, value)

#############################################################
### two simple x2 permutations sfirst for BARCOL & TXTCOL
# Get all permutations of col_names
print("\n\n")
print("generating permutations")
perm = permutations(col_names, 2)

# Print the obtained permutations

perm_list = list(perm)

macro_bar = "BARCOL_ARR=("
macro_text = "TXTCOL_ARR=("
for combo in perm_list:
    print(combo)

    macro_bar = macro_bar + """'${""" + combo[0] + """}' """
    macro_text = macro_text + """'${""" + combo[1] + """}' """
    #print("jj", macro_bar)
macro_bar = macro_bar + ")"
macro_text = macro_text + ")"

print()
print(macro_bar) # goes into custom_bashrc/bashrc_assets/_bash_colour_defs.sh
print()
print(macro_text) # goes into custom_bashrc/bashrc_assets/_bash_colour_defs.sh

print()
print("len(macro_bar)", len(macro_bar))
print("len(macro_text)", len(macro_text))

# members in array
print("no of colour permutations ", len(perm_list))

#print(perm_list)

#############################################################


