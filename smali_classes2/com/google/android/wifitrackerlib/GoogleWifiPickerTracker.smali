.class public Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;
.super Lcom/android/wifitrackerlib/WifiPickerTracker;
.source "GoogleWifiPickerTracker.java"


# instance fields
.field public mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

.field private mWsuProvisonStatusCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;

.field private final mWsuWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/wifitrackerlib/WsuWifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p13}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    .line 54
    new-instance p1, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$AIqIte-m2de6taXMo0WM0b7Z7VM;

    invoke-direct {p1, p0}, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$AIqIte-m2de6taXMo0WM0b7Z7VM;-><init>(Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;)V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    .line 65
    new-instance p1, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Vve9ZqzbFHYfdLUVM0XU-RH6MRg;

    invoke-direct {p1, p0}, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Vve9ZqzbFHYfdLUVM0XU-RH6MRg;-><init>(Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;)V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvisonStatusCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;

    .line 110
    new-instance p1, Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-direct {p1, p2, p3, p7}, Lcom/google/android/wifitrackerlib/WsuManager;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-wide v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 61
    invoke-direct {p0, v0}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->updateWsuWifiEntryScans(Ljava/util/List;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/google/android/wifitrackerlib/WsuProvider;I)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WSU provision status update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", for network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/wifitrackerlib/WsuProvider;->networkGroupIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleWifiPickerTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->updateWsuWifiEntryScans(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->processConfiguredNetworksChanged()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    .line 76
    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->generateWsuWifiEntryKey(Lcom/google/android/wifitrackerlib/WsuProvider;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;

    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->notifyProvisionStatusChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onStop$2()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->removeWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvisonStatusCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->removeWsuProvisionStatusUpdateCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;)V

    .line 130
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-virtual {p0}, Lcom/google/android/wifitrackerlib/WsuManager;->unbindAllServices()V

    return-void
.end method

.method static synthetic lambda$updateWsuWifiEntryScans$3(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 163
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateWsuWifiEntryScans(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 145
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    .line 148
    invoke-virtual {v0, p1}, Lcom/google/android/wifitrackerlib/WsuManager;->getMatchingWsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/wifitrackerlib/WsuProvider;

    .line 151
    invoke-static {v1}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->generateWsuWifiEntryKey(Lcom/google/android/wifitrackerlib/WsuProvider;)Ljava/lang/String;

    move-result-object v8

    .line 152
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v9, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    new-instance v10, Lcom/google/android/wifitrackerlib/WsuWifiEntry;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    move-object v2, v10

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/wifitrackerlib/WsuProvider;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/wifitrackerlib/WsuWifiEntry;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 158
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/wifitrackerlib/WsuWifiEntry;

    iget-object v3, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    .line 159
    invoke-virtual {v3, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->createSignupAction(Lcom/google/android/wifitrackerlib/WsuProvider;)Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;

    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->setSignupAction(Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    sget-object p1, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;->INSTANCE:Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;

    .line 163
    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method protected getContextualWifiEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method protected handleOnStart()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->addWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuProvisonStatusCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->addWsuProvisionStatusUpdateCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-virtual {v0}, Lcom/google/android/wifitrackerlib/WsuManager;->bindAllServices()V

    .line 120
    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleOnStart()V

    return-void
.end method

.method public synthetic lambda$new$0$GoogleWifiPickerTracker()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$GoogleWifiPickerTracker(Lcom/google/android/wifitrackerlib/WsuProvider;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->lambda$new$1(Lcom/google/android/wifitrackerlib/WsuProvider;I)V

    return-void
.end method

.method public synthetic lambda$onStop$2$GoogleWifiPickerTracker()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->lambda$onStop$2()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$389Yl8JwQtREcwfT7ydxBLZSwFI;

    invoke-direct {v1, p0}, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$389Yl8JwQtREcwfT7ydxBLZSwFI;-><init>(Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateContextualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->updateWsuWifiEntryScans(Ljava/util/List;)V

    return-void
.end method
