.class public Lcom/android/settings/network/AllowedNetworkTypesListener;
.super Landroid/telephony/PhoneStateListener;
.source "AllowedNetworkTypesListener.java"

# interfaces
.implements Landroid/telephony/PhoneStateListener$AllowedNetworkTypesChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;
    }
.end annotation


# instance fields
.field private mAllowedNetworkType:J

.field private mExecutor:Ljava/util/concurrent/Executor;

.field mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mAllowedNetworkType:J

    .line 44
    iput-object p1, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onAllowedNetworkTypesChanged(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 77
    iget-object p1, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mAllowedNetworkType:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;->onAllowedNetworkTypesChanged()V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllowedNetworkChanged: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mAllowedNetworkType:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetworkModeListener"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iput-wide v0, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mAllowedNetworkType:J

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 57
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 58
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Landroid/telephony/TelephonyManager;->registerPhoneStateListener(Ljava/util/concurrent/Executor;Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method public setAllowedNetworkTypesChangedListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesChangedListener;

    return-void
.end method

.method public unregister(Landroid/content/Context;I)V
    .locals 1

    .line 68
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 69
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterPhoneStateListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method
