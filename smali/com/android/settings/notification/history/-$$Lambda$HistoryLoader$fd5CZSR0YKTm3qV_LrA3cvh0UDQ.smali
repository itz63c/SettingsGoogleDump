.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$fd5CZSR0YKTm3qV_LrA3cvh0UDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$fd5CZSR0YKTm3qV_LrA3cvh0UDQ;->f$0:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$fd5CZSR0YKTm3qV_LrA3cvh0UDQ;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$fd5CZSR0YKTm3qV_LrA3cvh0UDQ;->f$0:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    iget-object p0, p0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$fd5CZSR0YKTm3qV_LrA3cvh0UDQ;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/settings/notification/history/HistoryLoader;->lambda$load$1(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;Ljava/util/List;)V

    return-void
.end method