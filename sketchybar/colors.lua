return {
  black = 0xff2e3440,
  white = 0xff88c0d0,
  red = 0xffbf616a,
  green = 0xffa3be8c,
  blue = 0xff81a1c1,
  yellow = 0xffebcb8b,
  orange = 0xffd08770,
  magenta = 0xffb48ead,
  grey = 0xff4c566a,
  transparent = 0x00000000,

  bar = {
    bg = 0xff2e3440,
    border = 0xff2e3440,
  },
  popup = {
    bg = 0xc02e3440,
    border = 0xff2e3440,
  },
  bg1 = 0xff2e3440,
  bg2 = 0xff2e3440,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
