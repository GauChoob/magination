import projutils.color as color

while True:
    col = int(input('Color word: '), 0)
    obj = color.Color(col)
    print('${:02X}, ${:02X}, ${:02X}'.format(obj.r, obj.g, obj.b, obj.a))