.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# direct methods
.method public static parseImageMode(Landroidx/slice/SliceItem;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconItem"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result p0

    return p0
.end method
