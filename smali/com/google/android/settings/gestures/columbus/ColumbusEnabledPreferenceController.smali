.class public Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ColumbusEnabledPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field static final COLUMBUS_DISABLED:I = 0x0

.field static final COLUMBUS_ENABLED:I = 0x1

.field static final SECURE_KEY_COLUMBUS_ENABLED:Ljava/lang/String; = "columbus_enabled"

.field static final SECURE_KEY_COLUMBUS_GESTURE_SETUP_COMPLETE:Ljava/lang/String; = "columbus_gesture_setup_complete"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitchBar:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f04057c

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->setTitle(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusSupported(Landroid/content/Context;)Z

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

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "columbus_enabled"

    .line 70
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "columbus_gesture_setup_complete"

    .line 76
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 p2, 0x6cc

    goto :goto_0

    :cond_1
    const/16 p2, 0x6cd

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 59
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnabledPreferenceController;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
