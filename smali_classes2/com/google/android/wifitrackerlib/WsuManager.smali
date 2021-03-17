.class public Lcom/google/android/wifitrackerlib/WsuManager;
.super Ljava/lang/Object;
.source "WsuManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;,
        Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;,
        Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerHandler:Landroid/os/Handler;

.field private final mWsuProvidersLoadCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWsuProvisionStatusUpdateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWsuServiceClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/wifitrackerlib/WsuServiceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvidersLoadCallbacks:Ljava/util/Set;

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvisionStatusUpdateCallbacks:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    iput-object p3, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method private loadWsuServicePkgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/wifitrackerlib/R$array;->wifitrackerlib_wsu_service_provider_packages:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvidersLoadCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWsuProvisionStatusUpdateCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvisionStatusUpdateCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindAllServices()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/wifitrackerlib/WsuManager;->loadWsuServicePkgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 61
    new-instance v1, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object v3, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWorkerHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/wifitrackerlib/WsuServiceClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Lcom/google/android/wifitrackerlib/WsuManager;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->bindWsuService()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createSignupAction(Lcom/google/android/wifitrackerlib/WsuProvider;)Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/wifitrackerlib/WsuProvider;->servicePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object p0, p1, Lcom/google/android/wifitrackerlib/WsuProvider;->networkGroupIdentity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->createSignupAction(Ljava/lang/String;)Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMatchingWsuProviders(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/android/wifitrackerlib/WsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 87
    invoke-virtual {v1, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->getMatchingWsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public nofityWsuProvidersLoaded()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvidersLoadCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    .line 115
    invoke-interface {v0}, Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;->onLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyWsuProvisionStatusUpdated(Lcom/google/android/wifitrackerlib/WsuProvider;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvisionStatusUpdateCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;->onProvisionStatusChanged(Lcom/google/android/wifitrackerlib/WsuProvider;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvidersLoadCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWsuProvisionStatusUpdateCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvisionStatusUpdateCallback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuProvisionStatusUpdateCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public tryGetManageSubscriptionAction(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 170
    invoke-virtual {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->tryGetManageSubscriptionAction(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public tryGetOverrideConnectedSummary(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 182
    invoke-virtual {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->tryGetOverrideConnectedSummary(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public unbindAllServices()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuManager;->mWsuServiceClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->unbindWsuService()V

    goto :goto_0

    :cond_0
    return-void
.end method
