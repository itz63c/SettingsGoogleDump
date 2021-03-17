.class public final Lcom/android/settings/accessibility/MagnificationCapabilities;
.super Ljava/lang/Object;
.source "MagnificationCapabilities.java"


# direct methods
.method public static getCapabilities(Landroid/content/Context;)I
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string v1, "accessibility_magnification_capability"

    const/4 v2, 0x1

    .line 98
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f010091

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 69
    invoke-static {p0, p1}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 70
    :cond_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static setCapabilities(Landroid/content/Context;I)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string v1, "accessibility_magnification_capability"

    .line 83
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
