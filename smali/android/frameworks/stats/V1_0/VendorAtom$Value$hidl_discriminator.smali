.class public final Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;
.super Ljava/lang/Object;
.source "VendorAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/stats/V1_0/VendorAtom$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "stringValue"

    return-object p0

    :cond_1
    const-string p0, "floatValue"

    return-object p0

    :cond_2
    const-string p0, "longValue"

    return-object p0

    :cond_3
    const-string p0, "intValue"

    return-object p0
.end method
