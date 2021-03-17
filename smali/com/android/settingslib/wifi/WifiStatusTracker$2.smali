.class Lcom/android/settingslib/wifi/WifiStatusTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .locals 1

    const/4 p3, 0x0

    .line 84
    invoke-virtual {p2, p3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 85
    invoke-static {p2}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    move p3, v0

    .line 87
    :cond_0
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p2}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "onCapabilitiesChanged: "

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "network="

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "networkCapabilities="

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$500(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 113
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onLost: "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "network="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$500(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 129
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
