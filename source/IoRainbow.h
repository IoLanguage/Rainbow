#ifndef IORAINBOW_DEFINED
#define IORAINBOW_DEFINED 1

#include "IoObject.h"

typedef IoObject IoRainbow;

IoRainbow *IoRainbow_proto(void *state);
IoRainbow *IoRainbow_rawClone(IoRainbow *self);
IoRainbow *IoRainbow_new(void *state);
void IoRainbow_free(IoRainbow *self);

IoRainbow *IoRainbow_setByCode(IoRainbow *, IoObject *, IoMessage *);

#endif
