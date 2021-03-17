.class public Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VibrateForCallsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final RAMPING_RINGER_ENABLED:Ljava/lang/String; = "ramping_ringer_enabled"

.field static final RING_VIBRATION_INTENSITY:Ljava/lang/String; = "ring_vibration_intensity"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

.field private mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private final mSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

.field private mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$1;

    const-string p2, "ring_vibration_intensity"

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$1;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    .line 71
    new-instance p1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;

    const-string p2, "vibrate_on"

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    .line 78
    new-instance p1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$3;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$3;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    .line 84
    new-instance p1, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method private getApplyRampingRinger()I
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "apply_ramping_ringer"

    const/4 v1, 0x0

    .line 153
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isRampingRingerEnabled()Z
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->getApplyRampingRinger()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDefaults()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    const/4 v2, 0x1

    .line 163
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "apply_ramping_ringer"

    const/4 v1, 0x0

    .line 166
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 214
    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "telephony"

    const-string v1, "ramping_ringer_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->isRampingRingerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041381

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    .line 100
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f04137f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041380

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    iget-object v2, v1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    iget-object v2, v1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "vibrate_for_calls_trigger_reason_acknowledged"

    invoke-virtual {v0, v2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isTriggerReasonAcknowledged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isSwitchOffTriggerReasonDependencies()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->setDefaults()V

    .line 132
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected restorePreference()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x1

    .line 206
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 204
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "apply_ramping_ringer"

    const/4 v2, 0x0

    .line 209
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected savePreference()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    const/4 v4, 0x1

    .line 194
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->getApplyRampingRinger()I

    move-result p0

    const-string v1, "apply_ramping_ringer"

    .line 197
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected toggleEnable()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isSwitchOffTriggerReasonDependencies()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->setDefaults()V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->restorePreference()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->savePreference()V

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    .line 182
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apply_ramping_ringer"

    .line 185
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
