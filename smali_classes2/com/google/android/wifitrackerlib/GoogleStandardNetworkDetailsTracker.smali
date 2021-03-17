.class public Lcom/google/android/wifitrackerlib/GoogleStandardNetworkDetailsTracker;
.super Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;
.source "GoogleStandardNetworkDetailsTracker.java"


# instance fields
.field private final mWsuNetworkDetailsController:Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p13}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    .line 42
    new-instance p1, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;

    invoke-direct {p1, p2, p3, p7, p0}, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;Lcom/android/wifitrackerlib/NetworkDetailsTracker;)V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/GoogleStandardNetworkDetailsTracker;->mWsuNetworkDetailsController:Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;

    return-void
.end method


# virtual methods
.method protected handleOnStart()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->handleOnStart()V

    .line 51
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleStandardNetworkDetailsTracker;->mWsuNetworkDetailsController:Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;

    invoke-virtual {p0}, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->onUiStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->onStop()V

    .line 59
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/GoogleStandardNetworkDetailsTracker;->mWsuNetworkDetailsController:Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;

    invoke-virtual {p0}, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->onUiStop()V

    return-void
.end method
