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
    bold := method(Rainbow setByCode("1", Rainbow isStderr))

    # foregrounds

    //doc Rainbow black Set to black.
    black := method(Rainbow setByCode("30", Rainbow isStderr))

    //doc Rainbow red Set to red.
    red := method(Rainbow setByCode("31", Rainbow isStderr))

    //doc Rainbow green Set to green.
    green := method(Rainbow setByCode("32", Rainbow isStderr))

    //doc Rainbow yellow Set to yellow.
    yellow := method(Rainbow setByCode("33", Rainbow isStderr))

    //doc Rainbow blue Set to blue.
    blue := method(Rainbow setByCode("34", Rainbow isStderr))

    //doc Rainbow magenta Set to magenta.
    magenta := method(Rainbow setByCode("35", Rainbow isStderr))

    //doc Rainbow cyan Set to cyan.
    cyan := method(Rainbow setByCode("36", Rainbow isStderr))

    //doc Rainbow white Set to white.
    white := method(Rainbow setByCode("37", Rainbow isStderr))

    //doc Rainbow gray Set to gray.
    gray := method(Rainbow setByCode("90", Rainbow isStderr))

    //doc Rainbow brightRed Set to bright red.
    brightRed := method(Rainbow setByCode("91", Rainbow isStderr))

    //doc Rainbow brightGreen Set to bright green.
    brightGreen := method(Rainbow setByCode("92", Rainbow isStderr))

    //doc Rainbow brightYellow Set to bright yellow.
    brightYellow := method(Rainbow setByCode("93", Rainbow isStderr))

    //doc Rainbow brightBlue Set to bright blue.
    brightBlue := method(Rainbow setByCode("94", Rainbow isStderr))

    //doc Rainbow brightMagenta Set to bright magenta.
    brightMagenta := method(Rainbow setByCode("95", Rainbow isStderr))

    //doc Rainbow brightCyan Set to bright cyan.
    brightCyan := method(Rainbow setByCode("96", Rainbow isStderr))

    //doc Rainbow brightWhite Set to bright white.
    brightWhite := method(Rainbow setByCode("97", Rainbow isStderr))

    # backgrounds

    //doc Rainbow blackBg Set background to black.
    blackBg := method(Rainbow setByCode("40", Rainbow isStderr))

    //doc Rainbow redBg Set background to red.
    redBg := method(Rainbow setByCode("41", Rainbow isStderr))

    //doc Rainbow greenBg Set background to green.
    greenBg := method(Rainbow setByCode("42", Rainbow isStderr))

    //doc Rainbow yellowBg Set background to yellow.
    yellowBg := method(Rainbow setByCode("43", Rainbow isStderr))

    //doc Rainbow blueBg Set background to blue.
    blueBg := method(Rainbow setByCode("44", Rainbow isStderr))

    //doc Rainbow magentaBg Set background to magenta.
    magentaBg := method(Rainbow setByCode("45", Rainbow isStderr))

    //doc Rainbow cyanBg Set background to cyan.
    cyanBg := method(Rainbow setByCode("46", Rainbow isStderr))

    //doc Rainbow whiteBg Set background to white.
    whiteBg := method(Rainbow setByCode("47", Rainbow isStderr))

    //doc Rainbow grayBg Set background to gray.
    grayBg := method(Rainbow setByCode("100", Rainbow isStderr))

    //doc Rainbow brightRedBg Set background to bright red.
    brightRedBg := method(Rainbow setByCode("101", Rainbow isStderr))

    //doc Rainbow brightGreenBg Set background to bright green.
    brightGreenBg := method(Rainbow setByCode("102", Rainbow isStderr))

    //doc Rainbow brightYellowBg Set background to bright yellow.
    brightYellowBg := method(Rainbow setByCode("103", Rainbow isStderr))

    //doc Rainbow brightBlueBg Set background to bright blue.
    brightBlueBg := method(Rainbow setByCode("104", Rainbow isStderr))

    //doc Rainbow brightMagentaBg Set background to bright magenta.
    brightMagentaBg := method(Rainbow setByCode("105", Rainbow isStderr))

    //doc Rainbow brightCyanBg Set background to bright cyan.
    brightCyanBg := method(Rainbow setByCode("106", Rainbow isStderr))

    //doc Rainbow brightWhiteBg Set background to bright white.
    brightWhiteBg := method(Rainbow setByCode("107", Rainbow isStderr))

    //doc Rainbow reset Reset all styles and colors.
    reset := method(Rainbow setByCode("0", Rainbow isStderr))

)

