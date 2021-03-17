.class public Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;
.super Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;
.source "ReverseChargingSwitchPreferenceController.java"


# static fields
.field static final NO_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RCSwitchPrefController"


# instance fields
.field mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private logLaunchFailEvent(I)V
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLaunchRequirements() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RCSwitchPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x64

    if-eq p1, v3, :cond_0

    .line 73
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logStopEvent(IIJ)V

    goto :goto_0

    .line 75
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevelChanged:Z

    if-eqz p0, :cond_1

    .line 76
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logStopEvent(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method checkLaunchRequirements()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isOnWirelessCharge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x65

    return p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x64

    return p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x68

    return p0

    .line 59
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    if-eqz v0, :cond_3

    const/16 p0, 0x6b

    return p0

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isOverheat()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x6d

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isReverseChargingOn()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method isLowBattery()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->getThresholdLevel()I

    move-result v0

    .line 93
    iget p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    if-ge v0, p0, :cond_1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isReverseChargingOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->setReverseChargingState(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 10

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->getThresholdLevel()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f040eef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isOverheat()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f040ee0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f040ee4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v2}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isOnWirelessCharge()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f040ee1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    if-eqz v2, :cond_3

    .line 119
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f040ee5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_3
    iget v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    const-string v6, "updateState() phone is low battery ! level : "

    const-string v7, "RCSwitchPrefController"

    const v8, 0x7f040ef4

    if-eq v2, v5, :cond_4

    const/16 v9, 0xa

    if-ge v2, v9, :cond_4

    .line 122
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {v9}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 122
    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eq v2, v5, :cond_5

    if-lt v0, v2, :cond_5

    .line 128
    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 130
    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    .line 128
    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", thresholdLevel : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->checkLaunchRequirements()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 142
    invoke-direct {p0, v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSwitchPreferenceController;->logLaunchFailEvent(I)V

    :cond_7
    if-ne v0, v5, :cond_8

    goto :goto_1

    :cond_8
    move v3, v4

    .line 144
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
