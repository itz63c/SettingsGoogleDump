.class Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;
.super Landroid/os/Handler;
.source "WsuServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wifitrackerlib/WsuServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WsuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/wifitrackerlib/WsuServiceClient;Landroid/os/Looper;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 223
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 283
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {v2}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$500(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wsuinterface/NetworkGroupSubscription;

    if-nez v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The status of NetworkGroupSubscription of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not loaded!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 267
    :cond_1
    invoke-virtual {v0}, Lcom/android/wsuinterface/NetworkGroupSubscription;->getProvisionStatus()I

    move-result v2

    .line 268
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_2

    if-ne p1, v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object v2, v0, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$800(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 275
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription;->setProvisionStatus(I)V

    .line 277
    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {v1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$700(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Lcom/google/android/wifitrackerlib/WsuManager;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 278
    invoke-static {p0, v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$900(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/NetworkGroupSubscription;)Lcom/google/android/wifitrackerlib/WsuProvider;

    move-result-object p0

    .line 277
    invoke-virtual {v1, p0, p1}, Lcom/google/android/wifitrackerlib/WsuManager;->notifyWsuProvisionStatusUpdated(Lcom/google/android/wifitrackerlib/WsuProvider;I)V

    goto/16 :goto_2

    .line 245
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/wifitrackerlib/WsuServiceClient$NetworkGroupsLoadResult;

    .line 246
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$502(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/util/Map;)Ljava/util/Map;

    .line 247
    iget-object v0, p1, Lcom/google/android/wifitrackerlib/WsuServiceClient$NetworkGroupsLoadResult;->loadedNetworkGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wsuinterface/NetworkGroupSubscription;

    .line 248
    iget-object v2, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {v2}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$500(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wsuinterface/NetworkGroupSubscription;->uniqueIdentifier:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_4
    iget-object v0, p1, Lcom/google/android/wifitrackerlib/WsuServiceClient$NetworkGroupsLoadResult;->firstProvisionedNetworkGroupId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 252
    invoke-static {v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$500(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/wifitrackerlib/WsuServiceClient$NetworkGroupsLoadResult;->firstProvisionedNetworkGroupId:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wsuinterface/NetworkGroupSubscription;

    .line 251
    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$600(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/NetworkGroupSubscription;)V

    .line 255
    :cond_5
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$700(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Lcom/google/android/wifitrackerlib/WsuManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/wifitrackerlib/WsuManager;->nofityWsuProvidersLoaded()V

    goto :goto_2

    .line 241
    :cond_6
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$102(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/IWsuService;)Lcom/android/wsuinterface/IWsuService;

    goto :goto_2

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/android/wsuinterface/IWsuService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wsuinterface/IWsuService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$102(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/IWsuService;)Lcom/android/wsuinterface/IWsuService;

    .line 232
    :try_start_0
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$100(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Lcom/android/wsuinterface/IWsuService;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    .line 233
    invoke-static {v0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$200(Lcom/google/android/wifitrackerlib/WsuServiceClient;)Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;

    move-result-object v0

    .line 232
    invoke-interface {p1, v0}, Lcom/android/wsuinterface/IWsuService;->registerSubscriptionProvisionStatusListener(Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 235
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register provision status listener failed, caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$300(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V

    .line 237
    :goto_1
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$WsuHandler;->this$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    invoke-static {p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->access$400(Lcom/google/android/wifitrackerlib/WsuServiceClient;)V

    :goto_2
    return-void
.end method
