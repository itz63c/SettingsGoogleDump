.class public final Lcom/android/wsuinterface/NetworkGroupSubscription;
.super Ljava/lang/Object;
.source "NetworkGroupSubscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wsuinterface/NetworkGroupSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final helpUriString:Ljava/lang/String;

.field private mProvisionStatus:I

.field private mProvisionedPasspointConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionedWifiConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final matchingSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final subscriptionAuthenticator:Ljava/lang/String;

.field public final subscriptionProviderName:Ljava/lang/String;

.field public final uniqueIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/android/wsuinterface/NetworkGroupSubscription$1;

    invoke-direct {v0}, Lcom/android/wsuinterface/NetworkGroupSubscription$1;-><init>()V

    sput-object v0, Lcom/android/wsuinterface/NetworkGroupSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedPasspointConfigurations:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedWifiConfigurations:Ljava/util/List;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionStatus:I

    .line 85
    iput-object p1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionAuthenticator:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionProviderName:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->helpUriString:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->matchingSuggestions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/wsuinterface/NetworkGroupSubscription$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/android/wsuinterface/NetworkGroupSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 150
    :cond_0
    instance-of v0, p1, Lcom/android/wsuinterface/NetworkGroupSubscription;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_1
    check-cast p1, Lcom/android/wsuinterface/NetworkGroupSubscription;

    .line 154
    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getProvisionStatus()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionStatus:I

    return p0
.end method

.method public getProvisionedPasspoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedPasspointConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public getProvisionedWifiConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedWifiConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setProvisionStatus(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WSU - Service Identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Account Authenticator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionAuthenticator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Service Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionProviderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateProvisionedPasspointConfigurations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedPasspointConfigurations:Ljava/util/List;

    return-void
.end method

.method public updateProvisionedWifiConfigurations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedWifiConfigurations:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionAuthenticator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->subscriptionProviderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->helpUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedPasspointConfigurations:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 186
    iget-object v0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->mProvisionedWifiConfigurations:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 188
    iget-object p0, p0, Lcom/android/wsuinterface/NetworkGroupSubscription;->matchingSuggestions:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
