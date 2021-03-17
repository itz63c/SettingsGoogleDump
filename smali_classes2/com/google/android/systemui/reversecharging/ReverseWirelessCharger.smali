.class public Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.super Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIsDockPresentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation
.end field

.field private final mLocalIsDockPresentCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

.field private final mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mRtxInformationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtxStatusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseWirelessCharger"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;-><init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalIsDockPresentCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

    .line 50
    new-instance p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;-><init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    return-void
.end method

.method private dispatchRtxStatusCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;

    .line 310
    invoke-interface {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;->onRtxStatusChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 307
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initHALInterface()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->getService()Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    const-wide/16 v1, 0x0

    .line 86
    invoke-interface {v0, p0, v1, v2}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 87
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    invoke-interface {v0, p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->registerRtxCallback(Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no wireless charger hal found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReverseWirelessCharger"

    .line 89
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addRtxInformationCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addRtxStatusCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRtxModeOn()Z
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 240
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 242
    :try_start_0
    invoke-interface {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->isRtxModeOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "isRtxModeOn fail: "

    .line 244
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRtxSupported()Z
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-interface {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->isRtxSupported()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "isRtxSupported fail: "

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public rtxStatusInfoChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->dispatchRtxStatusCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    return-void
.end method

.method public serviceDied(J)V
    .locals 0

    const-string p1, "ReverseWirelessCharger"

    const-string p2, "serviceDied"

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    return-void
.end method

.method public setRtxMode(Z)V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 223
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 225
    :try_start_0
    invoke-interface {p0, p1}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->setRtxMode(Z)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ReverseWirelessCharger"

    const-string v0, "setRtxMode fail: "

    .line 227
    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
