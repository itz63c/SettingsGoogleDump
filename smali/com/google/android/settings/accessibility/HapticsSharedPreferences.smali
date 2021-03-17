.class public Lcom/google/android/settings/accessibility/HapticsSharedPreferences;
.super Ljava/lang/Object;
.source "HapticsSharedPreferences.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPrimarySwitchOffTriggerReason()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PRIMARY_SWITCH_OFF_TRIGGER"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 27
    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->mContext:Landroid/content/Context;

    const v0, 0x7f040146

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public isSwitchOffTriggerReasonDependencies()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PRIMARY_SWITCH_OFF_TRIGGER"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTriggerReasonAcknowledged(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public savePrimarySwitchOffTriggerReason(I)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "PRIMARY_SWITCH_OFF_TRIGGER"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAckFlag(Ljava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
