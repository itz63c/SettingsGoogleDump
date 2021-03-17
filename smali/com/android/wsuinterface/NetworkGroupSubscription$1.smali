.class Lcom/android/wsuinterface/NetworkGroupSubscription$1;
.super Ljava/lang/Object;
.source "NetworkGroupSubscription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wsuinterface/NetworkGroupSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wsuinterface/NetworkGroupSubscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/wsuinterface/NetworkGroupSubscription;
    .locals 9

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-class v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v7, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 206
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 207
    const-class v0, Landroid/net/wifi/WifiConfiguration;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 207
    invoke-virtual {p1, v8, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-class v0, Landroid/net/wifi/WifiNetworkSuggestion;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 211
    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 214
    new-instance p1, Lcom/android/wsuinterface/NetworkGroupSubscription;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/wsuinterface/NetworkGroupSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/wsuinterface/NetworkGroupSubscription$1;)V

    .line 219
    invoke-virtual {p1, p0}, Lcom/android/wsuinterface/NetworkGroupSubscription;->setProvisionStatus(I)V

    .line 221
    invoke-virtual {p1, v8}, Lcom/android/wsuinterface/NetworkGroupSubscription;->updateProvisionedWifiConfigurations(Ljava/util/List;)V

    .line 222
    invoke-virtual {p1, v7}, Lcom/android/wsuinterface/NetworkGroupSubscription;->updateProvisionedPasspointConfigurations(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wsuinterface/NetworkGroupSubscription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/wsuinterface/NetworkGroupSubscription;
    .locals 0

    .line 229
    new-array p0, p1, [Lcom/android/wsuinterface/NetworkGroupSubscription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription$1;->newArray(I)[Lcom/android/wsuinterface/NetworkGroupSubscription;

    move-result-object p0

    return-object p0
.end method
