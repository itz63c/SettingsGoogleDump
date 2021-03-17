.class public abstract Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "VibrationIntensitySliderPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field final mEnabledKey:Ljava/lang/String;

.field protected mPosition:I

.field protected mPreference:Landroidx/preference/Preference;

.field private final mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

.field protected mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

.field protected mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

.field private mShouldPlayPreview:Z

.field private final mSupportRampingRinger:Z

.field protected final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 54
    iput-object p3, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mEnabledKey:Ljava/lang/String;

    .line 56
    iput-boolean p5, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSupportRampingRinger:Z

    .line 58
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$1;

    invoke-direct {p1, p0, p3, p4}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    .line 65
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$2;

    const-string p2, "vibrate_on"

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$2;-><init>(Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    .line 71
    new-instance p1, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$3;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$3;-><init>(Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    .line 81
    new-instance p1, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private hasVibrationEnabledSetting()Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasVibrationEnabledSettingAndIsDisabled()Z
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->isVibrationEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVibrationEnabled()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 218
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onStartSetSliderPosition()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPositionFromPrimarySwitchTriggerReason()V

    goto :goto_1

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSettingAndIsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->restorePreference()I

    move-result v0

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    :goto_1
    return-void
.end method

.method private setPosition(I)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x3

    .line 102
    :cond_0
    iput p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    return-void
.end method

.method private updateVibrationEnabledSettings(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSetting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apply_ramping_ringer"

    .line 231
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 233
    invoke-static {v4, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-eq p1, v1, :cond_4

    .line 236
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 241
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_2
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

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getMin()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    return-void
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

.method public getMax()I
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreference()Landroidx/preference/Preference;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSettingValue()I
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getDefaultIntensity()I

    move-result p0

    .line 254
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

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
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->registerSettingsObservers()V

    .line 123
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSettingValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setPosition(I)V

    .line 125
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->onStartSetSliderPosition()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->unregisterSettingsObservers()V

    .line 137
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected playVibrationPreview()V
    .locals 3

    .line 331
    iget-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mShouldPlayPreview:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mShouldPlayPreview:Z

    .line 335
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 336
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 337
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 338
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getPreviewVibrationAudioAttributesUsage()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 339
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method protected registerSettingsObservers()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method protected restorePreference()I
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getDefaultIntensity()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected savePreference()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSettingValue()I

    move-result v1

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method

.method protected setFakeSliderPosition(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    .line 250
    iget-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 4

    .line 171
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x3

    .line 174
    :cond_0
    iget v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return v1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updateVibrationEnabledSettings(I)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updateSetting(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->savePreference()I

    :cond_3
    if-eqz v3, :cond_4

    .line 186
    iget v3, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    if-eq v3, p1, :cond_4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mShouldPlayPreview:Z

    .line 187
    iput p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    .line 188
    iget-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return v0
.end method

.method protected setSliderPositionFromPrimarySwitchTriggerReason()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iput v1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    .line 283
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getDefaultIntensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSettingAndIsDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->restorePreference()I

    move-result v3

    .line 270
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    goto :goto_0

    .line 275
    :cond_2
    iput v1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    .line 276
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->restorePreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    goto :goto_0

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSettingAndIsDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    goto :goto_0

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSettingValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    :goto_0
    return-void
.end method

.method protected toggleEnable()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPositionFromPrimarySwitchTriggerReason()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->savePreference()I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSettingAndIsDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    .line 299
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    .line 303
    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected unregisterSettingsObservers()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPrimaryVibrationSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method protected updatePreferenceVisibility()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 320
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method protected updateSetting(I)Z
    .locals 1

    if-nez p1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->hasVibrationEnabledSetting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
