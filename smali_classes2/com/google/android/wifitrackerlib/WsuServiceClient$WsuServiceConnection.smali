.class Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;
.super Ljava/lang/Object;
.source "WsuServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wifitrackerlib/WsuServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WsuServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/wifitrackerlib/WsuServiceClient;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died from WsuService app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null binding from WsuService app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    const-string v0, "WsuService connected."

    invoke-static {p1, v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from WsuService app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuServiceConnection;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$000(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
