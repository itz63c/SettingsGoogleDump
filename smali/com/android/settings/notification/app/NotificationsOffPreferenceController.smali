.class public Lcom/android/settings/notification/app/NotificationsOffPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "NotificationsOffPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "block_desc"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationsOffPreferenceController;->isIncludedInFilter()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 51
    :cond_1
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isIncludedInFilter()Z
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    const-string v0, "importance"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    const p0, 0x7f04052c

    .line 62
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_1

    const p0, 0x7f04052b

    .line 64
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f040228

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 69
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
