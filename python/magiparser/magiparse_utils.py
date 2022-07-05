def num2byte(x):
    return "${:02X}".format(x)
    
def num2word(x):
    high = x//256
    low = x - high*256
    return "${:02X} ${:02X}".format(low,high)