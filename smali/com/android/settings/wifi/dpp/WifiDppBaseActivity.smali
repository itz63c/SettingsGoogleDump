.class abstract Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppBaseActivity.java"


# instance fields
.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract handleIntent(Landroid/content/Intent;)V
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p2

    const v0, 0x7f1301b7

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060296

    .line 38
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
