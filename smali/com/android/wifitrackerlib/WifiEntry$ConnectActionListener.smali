.class public Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;
.super Ljava/lang/Object;
.source "WifiEntry.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public static synthetic $r8$lambda$PXyIsmo8JSjHIgm2QCDxvlg-uVQ(Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->lambda$onSuccess$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fwLMQIZ2BigWPV4m36QoxZBSc-k(Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->lambda$onFailure$1()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 1

    .line 902
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 903
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 894
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 901
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 889
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
