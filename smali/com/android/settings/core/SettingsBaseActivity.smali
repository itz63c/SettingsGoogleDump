.class public Lcom/android/settings/core/SettingsBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;,
        Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;,
        Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;
    }
.end annotation


# static fields
.field private static sTileDenylist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoriesUpdateTaskCount:I

.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private final mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileDenylist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;-><init>(Lcom/android/settings/core/SettingsBaseActivity;Lcom/android/settings/core/SettingsBaseActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/core/SettingsBaseActivity;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getLineCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$208(Lcom/android/settings/core/SettingsBaseActivity;)I
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoriesUpdateTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoriesUpdateTaskCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/settings/core/SettingsBaseActivity;)I
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoriesUpdateTaskCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoriesUpdateTaskCount:I

    return v0
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileDenylist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/core/SettingsBaseActivity;Ljava/util/Set;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCategoriesChanged(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/core/SettingsBaseActivity;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories(Z)V

    return-void
.end method

.method private getLineCount()I
    .locals 4

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "collapsingTextHelper"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 233
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "textLayout"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLineCount"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private initCollapsingToolbar()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v1, Lcom/android/settings/core/SettingsBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SettingsBaseActivity$1;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private isLockTaskModePinned()Z
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 257
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private onCategoriesChanged(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;

    invoke-interface {v2, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;->onCategoriesChanged(Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCategories(Z)V
    .locals 2

    .line 302
    iget v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoriesUpdateTaskCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 303
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isToolbarEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isSettingsRunOnTop()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SettingsBaseActivity"

    const-string v0, "Devices lock task mode pinned."

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/core/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x26

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-eqz v0, :cond_2

    const v0, 0x7f130140

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_2
    const-string v0, "settings_silky_home"

    .line 96
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const v0, 0x7f0601ec

    .line 98
    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0d0159

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    goto :goto_0

    :cond_3
    const v0, 0x7f0601eb

    .line 101
    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    :goto_0
    const v0, 0x7f0d003c

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->initCollapsingToolbar()V

    return-void

    :cond_5
    :goto_1
    const/16 p0, 0x8

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories()V

    return-void
.end method

.method public remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    const v0, 0x7f0d016d

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0d016d

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const v0, 0x7f0d016d

    .line 169
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 4

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 273
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 277
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileDenylist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    :cond_3
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileDenylist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    const/4 p2, 0x2

    .line 281
    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v2
.end method

.method public setTitle(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateCategories()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories(Z)V

    return-void
.end method
