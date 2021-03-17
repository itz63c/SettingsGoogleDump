.class public Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderWifiCallingGroup.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field protected mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mSimCallManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSubIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiCallingForSubPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ayOGpMiCKsmihzWGlAPaCFWDRVw(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->lambda$setSubscriptionInfoForPreference$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    .line 81
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 82
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 84
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    .line 85
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 86
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    return-void
.end method

.method private getTelephonyManagerForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isWifiCallingAvailableForCarrier(I)Z
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "carrier_wfc_ims_available_bool"

    .line 263
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setSubscriptionInfoForPreference$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 2

    .line 209
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/Settings$WifiCallingSettingsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setPhoneAccountHandleForSubscriptionId(Landroid/content/Context;I)V
    .locals 1

    .line 108
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 109
    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 110
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSubscriptionInfoForPreference(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0xa

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 183
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->shouldShowWifiCallingForSub(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    if-nez v3, :cond_1

    .line 191
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 197
    invoke-static {v5, v7}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 200
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 202
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 203
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 207
    :cond_2
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v4, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup-$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getTelephonyManagerForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v1, v0, 0x1

    .line 219
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const v0, 0x7f0404d5

    .line 220
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setSubscriptionInfoList(Landroid/content/Context;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 94
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0, p1, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setTelephonyManagerForSubscriptionId(Landroid/content/Context;I)V

    .line 97
    invoke-direct {p0, p1, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setPhoneAccountHandleForSubscriptionId(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTelephonyManagerForSubscriptionId(Landroid/content/Context;I)V
    .locals 1

    .line 102
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 103
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 104
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private update()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 162
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 169
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 170
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoForPreference(Ljava/util/List;Ljava/util/Map;)V

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 175
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 140
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method protected getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "provider_model_wfc_group"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method protected queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1

    .line 124
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected shouldShowWifiCallingForSub(I)Z
    .locals 3

    .line 247
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v1

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 248
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;ILcom/android/settings/network/ims/WifiCallingQueryImsState;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isWifiCallingAvailableForCarrier(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method
