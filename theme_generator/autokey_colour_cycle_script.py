# Autokey Script for cycling themes in terminal
# https://github.com/autokey/autokey

# Install this theme in autokey and trigger via hotkey while you are in the terminal
# it calls the colsw command and cycles through themess so you can easily select one that appeals to you

limit=10
for idx in range(0, limit, 1):
    #print("idx = $idx")
    output = "echo idx = " + str(idx) + "\n" + "BARCOL = $BARCOL" + "\nTXTCOL = $TXTCOL"
    #keyboard.send_keys(output)
    
    output2 = "colsw " + str(idx) + "\n"
    keyboard.send_keys(output2)
    
