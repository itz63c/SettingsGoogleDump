.class public Lcom/android/settings/development/storage/SharedDataPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SharedDataPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mBlobStoreManager:Landroid/app/blob/BlobStoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    const-class v0, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/SharedDataPreferenceController;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shared_data"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    const v0, 0x7f041063

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/storage/SharedDataPreferenceController;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    if-eqz p0, :cond_0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 53
    invoke-virtual {p0, v2}, Landroid/app/blob/BlobStoreManager;->queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    .line 54
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p0, :cond_1

    const p0, 0x7f041065

    goto :goto_1

    :cond_1
    move p0, v0

    .line 55
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch blobs for current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SharedDataPrefCtrl"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method
