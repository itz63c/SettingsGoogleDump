.class public Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AdaptiveChargingPreferenceController.java"


# instance fields
.field mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->setAdaptiveChargingDeadline(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
