.class public abstract Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VibrationTogglePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field protected mFakePositionSetting:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

.field protected mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

.field protected mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

.field private mShouldPlayPreview:Z

.field protected final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 48
    iput-object p3, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_FAKE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mFakePositionSetting:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    .line 59
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$2;

    const-string p2, "vibrate_on"

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$2;-><init>(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    .line 65
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;-><init>(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setIntensityFromPrimarySwitchTriggerReason()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->playVibrationPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getSettingValue()I
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private hasVibrationEnabledSetting()Z
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasVibrationEnabledSettingAndIsDisabled()Z
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->hasVibrationEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->isVibrationEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playVibrationPreview()V
    .locals 3

    .line 297
    iget-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mShouldPlayPreview:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mShouldPlayPreview:Z

    .line 301
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 302
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 303
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getPreviewVibrationAudioAttributesUsage()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 305
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private restoreFakePreference()I
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mFakePositionSetting:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getSettingValue()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private restorePreference()I
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private savePreference()I
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getSettingValue()I

    move-result v1

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method

.method private setSettingValue(I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateVibrationEnabledSettings(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->hasVibrationEnabledSetting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apply_ramping_ringer"

    .line 199
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 201
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eq p1, v0, :cond_4

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 208
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x5

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

.method protected abstract getDefaultIntensity()I
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getPreference()Landroidx/preference/Preference;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getVibrationEnabledSetting()Ljava/lang/String;
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->restoreFakePreference()I

    move-result p0

    if-lt p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->hasVibrationEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->isVibrationEnabled()Z

    move-result p0

    return p0

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getSettingValue()I

    move-result p0

    if-lt p0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method protected isVibrationEnabled()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 186
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 152
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->savePreference()I

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected saveFakePreference()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mFakePositionSetting:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getSettingValue()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->updateVibrationEnabledSettings(I)Z

    move-result v0

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getDefaultIntensity()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->updateSetting(I)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 143
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mShouldPlayPreview:Z

    .line 144
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->savePreference()I

    return v0
.end method

.method protected setIntensityFromPrimarySwitchTriggerReason()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getDefaultIntensity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->updateVibrationEnabledSettings(I)Z

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getDefaultIntensity()I

    move-result v2

    .line 239
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->restorePreference()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setSettingValue(I)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setSettingValue()V

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected setSettingValue()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->restorePreference()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setSettingValue(I)V

    return-void
.end method

.method protected toggleEnable()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    const/4 v1, 0x1

    .line 255
    iput-boolean v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mShouldPlayPreview:Z

    .line 256
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setIntensityFromPrimarySwitchTriggerReason()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->savePreference()I

    .line 259
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->saveFakePreference()V

    .line 260
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 261
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected updateSetting(I)Z
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->hasVibrationEnabledSettingAndIsDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    .line 170
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
