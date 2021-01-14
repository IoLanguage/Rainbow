//metadoc Rainbow category API
/*metadoc Rainbow description 
This proto allows you to colorize command line output.

For example:

```Io
Rainbow bold red blueBg
```

Will make your output print on blue background with bold red font.
*/

Rainbow do (

    /*doc Rainbow isStderr 
    If it's set to `true`, `Rainbow` will change appearance of stderr instead of
    stdout (default). Default to `false`. */
    isStderr := false

    # styles

    //doc Rainbow bold Set to bold.
    bold := method(self setByCode("1", self isStderr))

    # foregrounds

    //doc Rainbow black Set to black.
    black := method(self setByCode("30", self isStderr))

    //doc Rainbow red Set to red.
    red := method(self setByCode("31", self isStderr))

    //doc Rainbow green Set to green.
    green := method(self setByCode("32", self isStderr))

    //doc Rainbow yellow Set to yellow.
    yellow := method(self setByCode("33", self isStderr))

    //doc Rainbow blue Set to blue.
    blue := method(self setByCode("34", self isStderr))

    //doc Rainbow magenta Set to magenta.
    magenta := method(self setByCode("35", self isStderr))

    //doc Rainbow cyan Set to cyan.
    cyan := method(self setByCode("36", self isStderr))

    //doc Rainbow white Set to white.
    white := method(self setByCode("37", self isStderr))

    //doc Rainbow gray Set to gray.
    gray := method(self setByCode("90", self isStderr))

    //doc Rainbow brightRed Set to bright red.
    brightRed := method(self setByCode("91", self isStderr))

    //doc Rainbow brightGreen Set to bright green.
    brightGreen := method(self setByCode("92", self isStderr))

    //doc Rainbow brightYellow Set to bright yellow.
    brightYellow := method(self setByCode("93", self isStderr))

    //doc Rainbow brightBlue Set to bright blue.
    brightBlue := method(self setByCode("94", self isStderr))

    //doc Rainbow brightMagenta Set to bright magenta.
    brightMagenta := method(self setByCode("95", self isStderr))

    //doc Rainbow brightCyan Set to bright cyan.
    brightCyan := method(self setByCode("96", self isStderr))

    //doc Rainbow brightWhite Set to bright white.
    brightWhite := method(self setByCode("97", self isStderr))

    # backgrounds

    //doc Rainbow blackBg Set background to black.
    blackBg := method(self setByCode("40", self isStderr))

    //doc Rainbow redBg Set background to red.
    redBg := method(self setByCode("41", self isStderr))

    //doc Rainbow greenBg Set background to green.
    greenBg := method(self setByCode("42", self isStderr))

    //doc Rainbow yellowBg Set background to yellow.
    yellowBg := method(self setByCode("43", self isStderr))

    //doc Rainbow blueBg Set background to blue.
    blueBg := method(self setByCode("44", self isStderr))

    //doc Rainbow magentaBg Set background to magenta.
    magentaBg := method(self setByCode("45", self isStderr))

    //doc Rainbow cyanBg Set background to cyan.
    cyanBg := method(self setByCode("46", self isStderr))

    //doc Rainbow whiteBg Set background to white.
    whiteBg := method(self setByCode("47", self isStderr))

    //doc Rainbow grayBg Set background to gray.
    grayBg := method(self setByCode("100", self isStderr))

    //doc Rainbow brightRedBg Set background to bright red.
    brightRedBg := method(self setByCode("101", self isStderr))

    //doc Rainbow brightGreenBg Set background to bright green.
    brightGreenBg := method(self setByCode("102", self isStderr))

    //doc Rainbow brightYellowBg Set background to bright yellow.
    brightYellowBg := method(self setByCode("103", self isStderr))

    //doc Rainbow brightBlueBg Set background to bright blue.
    brightBlueBg := method(self setByCode("104", self isStderr))

    //doc Rainbow brightMagentaBg Set background to bright magenta.
    brightMagentaBg := method(self setByCode("105", self isStderr))

    //doc Rainbow brightCyanBg Set background to bright cyan.
    brightCyanBg := method(self setByCode("106", self isStderr))

    //doc Rainbow brightWhiteBg Set background to bright white.
    brightWhiteBg := method(self setByCode("107", self isStderr))

    //doc Rainbow reset Reset all styles and colors.
    reset := method(self setByCode("0", self isStderr))

)

