.class public abstract Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColumbusTogglePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "columbus_enabled"

    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/settings/core/BasePreferenceController;->setMetricsCategory(I)V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p1, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

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

.method public isChecked()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->register()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->unregister()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 70
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 97
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
