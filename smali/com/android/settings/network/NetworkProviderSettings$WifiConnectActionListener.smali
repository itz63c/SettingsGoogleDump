.class Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;
.super Ljava/lang/Object;
.source "NetworkProviderSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnectActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$1;)V
    .locals 0

    .line 998
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1006
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p1}, Lcom/android/settings/network/NetworkProviderSettings;->access$200(Lcom/android/settings/network/NetworkProviderSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1009
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0414aa

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1010
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1001
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$102(Lcom/android/settings/network/NetworkProviderSettings;Z)Z

    return-void
.end method
