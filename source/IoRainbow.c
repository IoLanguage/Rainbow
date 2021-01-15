#include <stdio.h>

#include "IoState.h"
#include "IoSeq.h"

#include "IoRainbow.h"

static const char *protoId = "Rainbow";

IoTag *IoRainbow_newTag(void *state)
{
    IoTag *tag = IoTag_newWithName_(protoId);

    IoTag_state_(tag, state);

    IoTag_freeFunc_(tag, (IoTagFreeFunc *)IoRainbow_free);

    IoTag_cloneFunc_(tag, (IoTagCloneFunc *)IoRainbow_rawClone);

    return tag;
}

IoRainbow *IoRainbow_proto(void *state)
{
    IoObject *self = IoObject_new(state);
    IoObject_tag_(self, IoRainbow_newTag(state));

    IoState_registerProtoWithId_(state, self, protoId);

    {
        IoMethodTable methodTable[] = {
            {"setByCode", IoRainbow_setByCode},
            {NULL, NULL},
        };

        IoObject_addMethodTable_(self, methodTable);
    }

    return self;
}

IoRainbow *IoRainbow_rawClone(IoRainbow *proto)
{
    return IoObject_rawClonePrimitive(proto);
}

IoRainbow *IoRainbow_new(void *state)
{
    IoObject *proto = IoState_protoWithId_(state, protoId);
    return IOCLONE(proto);
}

void IoRainbow_free(IoRainbow *self) 
{ 
}

/*doc Rainbow setByCode(Sequence[, bool])
Set color with raw code. For example:

```Io
# to make bold font
Rainbow setByCode("1")

# to make it red
Rainbow setByCode("31")

# to reset
Rainbow setByCode("0")
```

The second argument is optional boolean. If it's set to `true` the code changes
stderr instead of stdout.

See here for all available codes:
https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_parameters

*/
IoRainbow *IoRainbow_setByCode(IoRainbow *self, IoObject *locals, IoMessage *m)
{
    IoSeq *input = IoMessage_locals_cStringArgAt_(m, locals, 0);
    int isStdErr = IoMessage_locals_boolArgAt_(m, locals, 1);

    if (isStdErr) {
        fprintf(stderr, "\033[%sm", input);
    } else {
        fprintf(stdout, "\033[%sm", input);
    }

    return self;
}
