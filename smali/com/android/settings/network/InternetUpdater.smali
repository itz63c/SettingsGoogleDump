.class public Lcom/android/settings/network/InternetUpdater;
.super Ljava/lang/Object;
.source "InternetUpdater.java"

# interfaces
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;
    }
.end annotation


# static fields
.field private static sTransportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInternetType:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mOnInternetTypeChangedListener:Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;

.field mTransport:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x1

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/settings/network/InternetUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$1;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 143
    new-instance v0, Lcom/android/settings/network/InternetUpdater$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$2;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 154
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 155
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 156
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 157
    iput-object p3, p0, Lcom/android/settings/network/InternetUpdater;->mOnInternetTypeChangedListener:Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/InternetUpdater;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getInternetType()I
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->update()V

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method update()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput v0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mOnInternetTypeChangedListener:Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;

    if-eqz v0, :cond_1

    .line 192
    iget p0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    invoke-interface {v0, p0}, Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;->onInternetTypeChanged(I)V

    :cond_1
    return-void
.end method
