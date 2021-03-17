.class public final synthetic Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ChyBenHDoETtHwlO7WDLB2RL-SE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;


# instance fields
.field public final synthetic f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

.field public final synthetic f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/NetworkGroupSubscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ChyBenHDoETtHwlO7WDLB2RL-SE;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ChyBenHDoETtHwlO7WDLB2RL-SE;->f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;

    return-void
.end method


# virtual methods
.method public final onExecute()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ChyBenHDoETtHwlO7WDLB2RL-SE;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ChyBenHDoETtHwlO7WDLB2RL-SE;->f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;

    invoke-virtual {v0, p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->lambda$createManageSubscriptionAction$0$WsuServiceClient(Lcom/android/wsuinterface/NetworkGroupSubscription;)V

    return-void
.end method
