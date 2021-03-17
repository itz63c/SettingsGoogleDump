.class public Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private final mFragment:Landroidx/fragment/app/FragmentManager;

.field private mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "zen_mode_toggle"

    .line 49
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mFragment:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private updatePreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    :goto_0
    return-void
.end method

.method private updateZenModeState(Landroidx/preference/Preference;)V
    .locals 2

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->writeMetrics(Landroidx/preference/Preference;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenDuration()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenModeForDuration(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenMode(I)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance p1, Lcom/android/settings/notification/SettingsEnableZenModeDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mFragment:Landroidx/fragment/app/FragmentManager;

    const-string v0, "EnableZenModeButton"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeMetrics(Landroidx/preference/Preference;Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 117
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v0, 0x4f4

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_toggle"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->updateZenModeState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->writeMetrics(Landroidx/preference/Preference;Z)V

    .line 76
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenMode(I)V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    return-void
.end method
