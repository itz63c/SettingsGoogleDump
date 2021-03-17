.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# static fields
.field private static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public connected:Z

.field public enabled:Z

.field public isCaptivePortal:Z

.field public isCarrierMerged:Z

.field public isDefaultNetwork:Z

.field public level:I

.field private final mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistory:[Ljava/lang/String;

.field private mHistoryIndex:I

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderModel:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I

.field public statusLabel:Ljava/lang/String;

.field public subId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 73
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 78
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 134
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$3;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    .line 156
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 176
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 178
    new-instance p2, Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p2, p1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 179
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 180
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 181
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    const-string p2, "settings_provider_model"

    .line 182
    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mProviderModel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->recordLastWifiNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method private getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 4

    .line 346
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "<unknown ssid>"

    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 352
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 354
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 355
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeRequestNetworkScore()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v1

    if-nez v1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/NetworkKey;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_0
    return-void
.end method

.method private recordLastWifiNetwork(Ljava/lang/String;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 363
    rem-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    return-void
.end method

.method private updateRssi(I)V
    .locals 1

    .line 274
    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 275
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    return-void
.end method

.method private updateStatusLabel()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    .line 291
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    .line 294
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 296
    invoke-static {v3}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 298
    :cond_2
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    .line 301
    :cond_3
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    if-eqz v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 306
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    .line 305
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 308
    :goto_1
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v1, :cond_9

    const/16 v3, 0x11

    .line 310
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_sign_in_required:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 312
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    return-void

    :cond_5
    const/16 v2, 0x18

    .line 314
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_limited_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    :cond_6
    const/16 v2, 0x10

    .line 317
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 318
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "private_dns_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->private_dns_broken:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    goto :goto_2

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    :goto_2
    return-void

    .line 326
    :cond_8
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_9

    .line 327
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_connected_low_quality:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    .line 333
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 334
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    .line 336
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void
.end method

.method private updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 249
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 257
    :goto_2
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mProviderModel:Z

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 259
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    .line 261
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    :cond_4
    return-void
.end method

.method private updateWifiState()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 268
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 270
    iput v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    return-void
.end method


# virtual methods
.method public fetchInitialState()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 216
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_5

    .line 220
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    .line 221
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 225
    :goto_2
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mProviderModel:Z

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    .line 233
    :cond_5
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 190
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 191
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 193
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 197
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    .line 198
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 199
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method
