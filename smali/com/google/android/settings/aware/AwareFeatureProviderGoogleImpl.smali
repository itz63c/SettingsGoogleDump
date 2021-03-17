.class public Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;
.super Lcom/android/settings/aware/AwareFeatureProviderImpl;
.source "AwareFeatureProviderGoogleImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/aware/AwareFeatureProviderImpl;-><init>()V

    return-void
.end method

.method private static hasAwareSensor()Z
    .locals 2

    const-string v0, "ro.vendor.aware_available"

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aware_allowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getGestureSummary(Landroid/content/Context;ZZZ)Ljava/lang/CharSequence;
    .locals 6

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "silence_gesture"

    const/4 v2, 0x1

    .line 40
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "skip_gesture"

    .line 41
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "tap_gesture"

    .line 42
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 45
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const p0, 0x7f0402c3

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz p4, :cond_7

    const p0, 0x7f0402c2

    .line 54
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_7
    const p0, 0x7f0402c1

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "aware_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    .line 23
    invoke-static {}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;->hasAwareSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;->isAllowed(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showRestrictionDialog(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 33
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/google/android/settings/aware/AwareEnabledDialogFragment;->show(Landroidx/fragment/app/Fragment;Ljava/lang/Boolean;)V

    return-void
.end method
