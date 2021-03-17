.class public Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SmartAutoRotatePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f15002f

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)Lcom/android/settings/display/AutoRotateSwitchBarController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;

    return-object p0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SmartAutoRotatePreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15002f

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 63
    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p3

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 67
    new-instance v0, Lcom/android/settings/display/AutoRotateSwitchBarController;

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/settings/display/AutoRotateSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;

    const-string p3, "footer_preference"

    .line 69
    invoke-virtual {p0, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f0410f2

    .line 71
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p2}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method
