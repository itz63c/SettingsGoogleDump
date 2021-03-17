.class public Lcom/android/settings/notification/app/BlockPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/notification/app/BlockPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "block"

    return-object p0
.end method

.method getSwitchBarText()Ljava/lang/String;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040ce7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 141
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f040cd4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    xor-int/lit8 p1, p2, 0x1

    .line 101
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p2, :cond_4

    .line 102
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, -0x3e8

    goto :goto_0

    .line 111
    :cond_2
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    .line 115
    :cond_3
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 116
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v0, p1, :cond_6

    .line 117
    iput-boolean p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    goto :goto_1

    .line 121
    :cond_4
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p2, :cond_5

    .line 122
    invoke-virtual {p2, p1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_1

    .line 124
    :cond_5
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p2, :cond_6

    .line 125
    iput-boolean p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 128
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/settings/notification/app/BlockPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 62
    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p1, :cond_8

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/app/BlockPreferenceController;->getSwitchBarText()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->show()V

    .line 68
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setEnabled(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setEnabled(Z)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setEnabled(Z)V

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 88
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez p0, :cond_4

    .line 89
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    .line 88
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_7

    .line 91
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez p0, :cond_6

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    if-nez p0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 93
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    :goto_0
    return-void
.end method
