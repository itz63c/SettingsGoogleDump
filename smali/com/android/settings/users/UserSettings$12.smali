.class Lcom/android/settings/users/UserSettings$12;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1182
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p0

    .line 1184
    new-instance p2, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string p3, "user_settings_add_users_when_locked"

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2, p0}, Lcom/android/settings/core/BasePreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1188
    new-instance p2, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1189
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1190
    new-instance p2, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1191
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1192
    new-instance p2, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1193
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 1175
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p0

    .line 1176
    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    return p0
.end method
