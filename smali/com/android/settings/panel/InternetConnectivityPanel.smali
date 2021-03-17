.class public Lcom/android/settings/panel/InternetConnectivityPanel;
.super Ljava/lang/Object;
.source "InternetConnectivityPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;


# instance fields
.field private mCallback:Lcom/android/settings/panel/PanelContentCallback;

.field private final mContext:Landroid/content/Context;

.field private mInternetType:I

.field private mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

.field mIsProviderModelEnabled:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {v0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    .line 65
    new-instance v0, Lcom/android/settings/network/InternetUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$OnInternetTypeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    .line 66
    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/panel/InternetConnectivityPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/InternetConnectivityPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCustomizedButtonTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f041042

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x676

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-boolean p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "android.settings.NETWORK_PROVIDER_SETTINGS"

    goto :goto_0

    :cond_0
    const-string p0, "android.settings.WIRELESS_SETTINGS"

    .line 128
    :goto_0
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 129
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-boolean p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-eqz p0, :cond_0

    .line 115
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->AIRPLANE_SAFE_NETWORKS_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object p0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f040581

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const p0, 0x7f0401ba

    goto :goto_0

    :cond_0
    const p0, 0x7f040e89

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f0409e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isCustomizedButtonUsed()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    return p0
.end method

.method public onClickCustomizedButton()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/panel/InternetConnectivityPanel;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onInternetTypeChanged(I)V
    .locals 5

    .line 166
    iget v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eq p1, v2, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    move v1, v2

    .line 174
    :cond_4
    iput p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetType:I

    .line 176
    iget-object p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    if-eqz p1, :cond_7

    if-eqz v3, :cond_5

    .line 182
    invoke-interface {p1}, Lcom/android/settings/panel/PanelContentCallback;->onHeaderChanged()V

    .line 183
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->onCustomizedButtonStateChanged()V

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 188
    invoke-interface {p1}, Lcom/android/settings/panel/PanelContentCallback;->onTitleChanged()V

    .line 189
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->onCustomizedButtonStateChanged()V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 193
    invoke-interface {p1}, Lcom/android/settings/panel/PanelContentCallback;->onTitleChanged()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mIsProviderModelEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->onResume()V

    return-void
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-void
.end method
