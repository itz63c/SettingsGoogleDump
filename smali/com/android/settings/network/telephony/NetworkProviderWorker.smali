.class public Lcom/android/settings/network/telephony/NetworkProviderWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "NetworkProviderWorker.java"

# interfaces
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;,
        Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mDefaultDataSubid:I

.field final mHandler:Landroid/os/Handler;

.field private mInternetType:I

.field private mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

.field private mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p2, -0x1

    .line 62
    iput p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 69
    new-instance p2, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 78
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    invoke-direct {v0, p0, p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    .line 84
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    .line 85
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 86
    new-instance p2, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 87
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 88
    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 89
    new-instance p2, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    .line 90
    new-instance p2, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 93
    new-instance p2, Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    .line 94
    invoke-virtual {p2}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method private updateNetworkTypeName(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;
    .locals 0

    .line 254
    invoke-static {p3}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    if-eqz p0, :cond_0

    .line 257
    invoke-static {p1, p4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    .line 122
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->close()V

    return-void
.end method

.method public getApRowCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 0

    .line 263
    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p0

    return-object p0
.end method

.method getDefaultDataSubscriptionId()I
    .locals 0

    .line 248
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getNetworkTypeDescription()Ljava/lang/String;
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateNetworkTypeName(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEthernetConnected()Z
    .locals 1

    .line 295
    iget p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    const-string p1, "NetworkProviderWorker"

    const-string v0, "onAirplaneModeChanged"

    .line 167
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onDataConnectivityChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onDataConnectivityChange"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onInternetTypeChanged(I)V
    .locals 2

    .line 280
    iget v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 285
    :goto_1
    iput p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    :cond_3
    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onMobileDataEnabledChange"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onSignalStrengthChanged"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->start()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->registerPhoneStateListener(Ljava/util/concurrent/Executor;Landroid/telephony/PhoneStateListener;)V

    .line 105
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSlicePinned()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->unregister(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->stop()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterPhoneStateListener(Landroid/telephony/PhoneStateListener;)V

    .line 116
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSliceUnpinned()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: defaultDataSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkProviderWorker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    if-ne v1, v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterPhoneStateListener(Landroid/telephony/PhoneStateListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->unregister(Landroid/content/Context;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 150
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->registerPhoneStateListener(Ljava/util/concurrent/Executor;Landroid/telephony/PhoneStateListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
