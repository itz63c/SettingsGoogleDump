.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$9FswNwjCcsZLc-o0Gr0mecZEvbw(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->lambda$updateTilesList$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ODkn7mWP7vywCisgCLgYrhmji0k(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bD93eZE2JBvkEZduRs4Iq_lcyPs(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOFkl0vOSsHmjZ2HQA1dX0PDzVo(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 164
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method private doUpdateTilesList()V
    .locals 14

    .line 615
    const-class v0, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 616
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    .line 619
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 622
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "android.hardware.wifi"

    .line 623
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 621
    invoke-direct {p0, v4, v5, v6, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 625
    :goto_0
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 626
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "android.hardware.bluetooth"

    .line 627
    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 625
    invoke-direct {p0, v4, v8, v1, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v7

    .line 632
    :goto_2
    new-instance v5, Landroid/content/ComponentName;

    .line 633
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v8

    .line 632
    invoke-direct {p0, v4, v5, v8, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v7

    .line 637
    :goto_4
    new-instance v5, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 639
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v7

    .line 637
    invoke-direct {p0, v4, v5, v8, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v6

    goto :goto_6

    :cond_6
    :goto_5
    move v1, v7

    .line 643
    :goto_6
    new-instance v5, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 644
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 643
    invoke-direct {p0, v4, v5, v8, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v1, v6

    goto :goto_8

    :cond_8
    :goto_7
    move v1, v7

    .line 647
    :goto_8
    new-instance v5, Landroid/content/ComponentName;

    .line 648
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v0

    .line 647
    invoke-direct {p0, v4, v5, v0, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move v0, v6

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v7

    .line 652
    :goto_a
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 653
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 655
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-nez v5, :cond_b

    move v5, v7

    goto :goto_b

    :cond_b
    move v5, v6

    .line 652
    :goto_b
    invoke-direct {p0, v4, v1, v5, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v6

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v7

    .line 658
    :goto_d
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 659
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v7

    goto :goto_e

    :cond_e
    move v1, v6

    .line 660
    :goto_e
    new-instance v5, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 661
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, v4, v5, v1, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    move v0, v6

    goto :goto_10

    :cond_10
    :goto_f
    move v0, v7

    .line 665
    :goto_10
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 666
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v5

    .line 665
    invoke-direct {p0, v4, v1, v5, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    move v0, v6

    goto :goto_12

    :cond_12
    :goto_11
    move v0, v7

    :goto_12
    if-nez v2, :cond_18

    .line 672
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    .line 673
    monitor-enter v1

    .line 674
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 675
    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v9

    move v10, v6

    :goto_13
    if-ge v10, v9, :cond_13

    .line 677
    invoke-virtual {v8, v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v11

    .line 678
    invoke-virtual {v11}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 679
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 680
    sget-object v13, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 682
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    if-nez v12, :cond_16

    .line 685
    invoke-direct {p0, v4, v11, v6, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_15

    if-eqz v0, :cond_14

    goto :goto_14

    :cond_14
    move v0, v6

    goto :goto_15

    :cond_15
    :goto_14
    move v0, v7

    :cond_16
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 690
    :cond_17
    monitor-exit v1

    goto :goto_16

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_18
    :goto_16
    if-eqz v0, :cond_19

    const-string v0, "SettingsActivity"

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories()V

    goto :goto_17

    :cond_19
    const-string p0, "SettingsActivity"

    const-string v0, "No enabled state changed, skipping updateCategory call"

    .line 699
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .line 722
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    .line 725
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 728
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Metadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTag is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p0, "com.android.settings."

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 229
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 553
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "com.android.settings.RunningServices"

    .line 556
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.android.settings.applications.StorageUse"

    .line 557
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 559
    :cond_2
    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateTilesList$3()V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    if-nez p4, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 710
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 713
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 715
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return p0
.end method

.method private setTitleFromBackStack()V
    .locals 2

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 441
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v0, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 450
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 451
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V

    return-void
.end method

.method private setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .line 456
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 460
    :cond_0
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ":settings:show_fragment_title_resid"

    const/4 v2, -0x1

    .line 402
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x0

    .line 404
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 405
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title_res_package_name"

    .line 407
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 411
    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 411
    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 418
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    :cond_0
    iget p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    goto :goto_1

    .line 424
    :cond_1
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title"

    .line 425
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p0, "Done setting title"

    .line 429
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid fragment for this activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->getTargetFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 594
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const p3, 0x7f0d0314

    .line 595
    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-lez p4, :cond_2

    .line 597
    invoke-virtual {p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 599
    invoke-virtual {p2, p5}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    .line 601
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 602
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string p0, "Executed frag manager pendingTransactions"

    .line 603
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateTilesList()V
    .locals 1

    .line 611
    new-instance v0, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 1

    .line 574
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "remove_task_when_finishing"

    .line 576
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 526
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 531
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:show_fragment"

    .line 532
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_args"

    .line 533
    invoke-virtual {v0, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 537
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "intent"

    .line 539
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance p1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object p1

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method public hasNextButton()Z
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 518
    :goto_0
    sget-object v1, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 519
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 387
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v0, ":settings:show_fragment_args"

    .line 389
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    .line 390
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const p1, 0x7f040656

    .line 394
    iput p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 395
    const-class p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 376
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 377
    instance-of v1, v0, Lcom/android/settings/core/OnActivityResultListener;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1301b7

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 368
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "settings_silky_home"

    .line 236
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 239
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;-><init>(IZ)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 243
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;-><init>(IZ)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 248
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SettingsActivity"

    const-string v3, "Starting onCreate"

    .line 249
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 257
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "settings:ui_options"

    .line 260
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/Window;->setUiOptions(I)V

    :cond_1
    const-string v3, ":settings:show_fragment"

    .line 265
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    instance-of v4, p0, Lcom/android/settings/SubSettings;

    if-nez v4, :cond_3

    const-string v4, ":settings:show_fragment_as_subsetting"

    .line 271
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4

    const v4, 0x7f130320

    .line 278
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTheme(I)V

    :cond_4
    const v4, 0x7f0601f1

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_5

    .line 288
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v3, ":settings:categories"

    .line 291
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 293
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V

    .line 301
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_7

    xor-int/lit8 v4, p1, 0x1

    .line 305
    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    xor-int/2addr p1, v1

    .line 306
    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 307
    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_7
    const p1, 0x7f0d0541

    .line 309
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_8

    .line 311
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setMetricsTag(Ljava/lang/String;)V

    :cond_8
    const-string p1, "extra_prefs_show_button_bar"

    .line 315
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f0d011d

    .line 317
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 319
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0d00b8

    .line 321
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 322
    new-instance v1, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d04cb

    .line 326
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 327
    new-instance v3, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0d03a6

    .line 331
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 332
    new-instance v4, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsActivity-$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "extra_prefs_set_next_text"

    .line 338
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_a

    .line 339
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 341
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 343
    :cond_9
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    const-string p0, "extra_prefs_set_back_text"

    .line 346
    invoke-virtual {v0, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 347
    invoke-virtual {v0, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 349
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 351
    :cond_b
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_4
    const-string p0, "extra_prefs_show_skip"

    .line 354
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 503
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onPause()V

    .line 504
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 506
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 194
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 196
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 197
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_0

    .line 198
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 4

    .line 485
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onResume()V

    .line 487
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 493
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 469
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    const-string v0, ":settings:categories"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    const v0, 0x7f020224

    .line 511
    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 512
    invoke-super {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
