.class Lcom/android/settings/network/InternetUpdater$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "InternetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/InternetUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/InternetUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    .line 129
    invoke-static {v0}, Lcom/android/settings/network/InternetUpdater;->access$000(Lcom/android/settings/network/InternetUpdater;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    .line 134
    invoke-static {}, Lcom/android/settings/network/InternetUpdater;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    iput v2, p1, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->update()V

    return-void
.end method
