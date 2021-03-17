.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.source "MobileNetworkSettings.java"


# static fields
.field static final KEY_CLICKED_PREF:Ljava/lang/String; = "key_clicked_pref"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActiveSubsciptionsListener:Lcom/android/settings/network/ActiveSubsciptionsListener;

.field private mActiveSubsciptionsListenerCount:I

.field private mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

.field private mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

.field private mClickedPrefKey:Ljava/lang/String;

.field private mDropFirstSubscriptionChangeNotify:Z

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$BOgTxwYUXj7e1K3scPrItdrb44c(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 328
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;

    const v1, 0x7f150094

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    .line 81
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onSubscriptionDetailChanged()V

    return-void
.end method

.method private synthetic lambda$onSubscriptionDetailChanged$0()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListenerCount:I

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void
.end method

.method private onSubscriptionDetailChanged()V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    const-string p0, "NetworkSettings"

    const-string v0, "Callback during onResume()"

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListenerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListenerCount:I

    if-eq v0, v1, :cond_1

    return-void

    .line 240
    :cond_1
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result p1

    const-string v1, "android.provider.extra.SUB_ID"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display subId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, v0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 122
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 124
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    aput-object v1, p1, v0

    .line 124
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150094

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p3, 0x12

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 283
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    .line 284
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 286
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6

    .line 131
    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 133
    const-class v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    if-eqz v1, :cond_0

    .line 136
    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->init(I)V

    .line 138
    :cond_0
    const-class v1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 139
    const-class v1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 140
    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 141
    const-class v1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    .line 142
    const-class v1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    .line 143
    const-class v1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    .line 144
    const-class v1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 145
    const-class v1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 146
    const-class v1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(ILandroidx/fragment/app/Fragment;I)V

    .line 148
    const-class v1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    .line 149
    const-class v1, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;->init(I)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    new-instance v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 152
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    .line 154
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 155
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    .line 156
    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    .line 157
    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    .line 158
    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(I)V

    .line 159
    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 160
    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    .line 161
    const-class p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->init(I)Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    .line 163
    const-class p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    move-result-object p1

    .line 166
    const-class v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object v0

    .line 168
    const-class v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    .line 172
    const-class v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;->init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 173
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 174
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    .line 175
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 176
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 179
    const-class v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object v0

    .line 181
    const-class v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    move-result-object v1

    .line 183
    const-class v3, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object p1, v5, v4

    aput-object v0, v5, v2

    const/4 p1, 0x2

    aput-object v1, v5, p1

    .line 184
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 183
    invoke-virtual {v3, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 186
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 188
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 190
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 192
    const-class p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    .line 192
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->init(Landroidx/fragment/app/FragmentManager;ILandroidx/lifecycle/Lifecycle;)Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "NetworkSettings"

    const-string v1, "onCreate:+"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object v0

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user"

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mUserManager:Landroid/os/UserManager;

    .line 206
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 207
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 209
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onRestoreInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 307
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01e0

    const v1, 0x7f040c03

    const/4 v2, 0x0

    .line 308
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10804ea

    .line 310
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 311
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListener:Lcom/android/settings/network/ActiveSubsciptionsListener;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->stop()V

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onExpandButtonClick()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->onExpandButtonClick()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 318
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d01e0

    if-ne v0, v1, :cond_0

    .line 320
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    move-result-object p1

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RenameMobileNetwork"

    .line 320
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    .line 101
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    .line 102
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 103
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 216
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListener:Lcom/android/settings/network/ActiveSubsciptionsListener;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/os/Looper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListener:Lcom/android/settings/network/ActiveSubsciptionsListener;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubsciptionsListener:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    const-string v0, "key_clicked_pref"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
