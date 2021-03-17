.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getSearchBoxHeight()I
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b02db

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method private initHomepageContainer()V
    .locals 1

    const v0, 0x7f0d028b

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 94
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 97
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showSuggestionFragment()V
    .locals 2

    .line 78
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0d0175

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SettingsHomepageActivity"

    const-string v1, "Cannot show fragment"

    .line 87
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0601f0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0d008f

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSearchBoxHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initHomepageContainer()V

    const p1, 0x7f0d0483

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 56
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    const/16 v1, 0x5de

    .line 57
    invoke-interface {v0, p0, p1, v1}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;I)V

    const p1, 0x7f0d0034

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 61
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/core/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 63
    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "settings_silky_home"

    .line 65
    invoke-static {p0, p1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment()V

    :cond_0
    const-string p1, "settings_contextual_home"

    .line 68
    invoke-static {p0, p1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    const v0, 0x7f0d0174

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 72
    :cond_1
    new-instance p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {p1}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    const v0, 0x7f0d0314

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method
