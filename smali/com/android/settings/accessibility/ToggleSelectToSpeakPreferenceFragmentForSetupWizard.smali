.class public Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;
.source "ToggleSelectToSpeakPreferenceFragmentForSetupWizard.java"


# instance fields
.field private mToggleSwitchWasInitiallyChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x173

    return p0
.end method

.method public onStop()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x331

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    .line 45
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    return-void
.end method
