.class public Lcom/google/android/settings/accessibility/VibrationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VibrationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field mIsAvailable:Z

.field private mPreference:Landroidx/preference/Preference;

.field mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

.field private mSwitchToggledOffTrigger:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSwitchToggledOffTrigger:I

    .line 35
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 36
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationPreferenceController$1;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/VibrationPreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/VibrationPreferenceController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    .line 42
    new-instance p1, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    return-void
.end method

.method private enablePreferenceSetting(Z)V
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f0411ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f0411eb

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
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->isAllSettingDependenciesOff(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSwitchToggledOffTrigger:I

    .line 72
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    :cond_0
    iput v1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSwitchToggledOffTrigger:I

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    iget p0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSwitchToggledOffTrigger:I

    invoke-virtual {v0, p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected updatePreference()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 96
    iput v2, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSwitchToggledOffTrigger:I

    .line 97
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v1, v2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    .line 98
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "vibrate_for_calls_trigger_reason_acknowledged"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    .line 100
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    .line 102
    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mIsAvailable:Z

    .line 103
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    .line 107
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mIsAvailable:Z

    xor-int/2addr v4, v0

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_4

    .line 113
    iget-object v4, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v4}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 115
    invoke-direct {p0, v1}, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->enablePreferenceSetting(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v2}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    .line 117
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->enablePreferenceSetting(Z)V

    .line 122
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mIsAvailable:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
