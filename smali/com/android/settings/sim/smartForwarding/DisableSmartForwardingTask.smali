.class public Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;
.super Ljava/lang/Object;
.source "DisableSmartForwardingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

.field private final callWaitingStatus:[Z

.field private final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;[Z[Landroid/telephony/CallForwardingInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    .line 33
    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    .line 34
    iput-object p3, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    const-string v2, "Restore call waiting to "

    const-string v3, "SmartForwarding"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v1, v5, v4, v4}, Landroid/telephony/TelephonyManager;->setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    if-eqz v1, :cond_1

    aget-object v5, v1, v0

    if-eqz v5, :cond_1

    aget-object v1, v1, v0

    .line 47
    invoke-virtual {v1}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4, v4}, Landroid/telephony/TelephonyManager;->setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
