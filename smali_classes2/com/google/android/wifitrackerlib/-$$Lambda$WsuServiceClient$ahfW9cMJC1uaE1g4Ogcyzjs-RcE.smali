.class public final synthetic Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ahfW9cMJC1uaE1g4Ogcyzjs-RcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;


# instance fields
.field public final synthetic f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/wifitrackerlib/WsuServiceClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ahfW9cMJC1uaE1g4Ogcyzjs-RcE;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ahfW9cMJC1uaE1g4Ogcyzjs-RcE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onExecute()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ahfW9cMJC1uaE1g4Ogcyzjs-RcE;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/-$$Lambda$WsuServiceClient$ahfW9cMJC1uaE1g4Ogcyzjs-RcE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->lambda$createSignupAction$1$WsuServiceClient(Ljava/lang/String;)V

    return-void
.end method
