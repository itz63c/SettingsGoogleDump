.class public final synthetic Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentProviderClient;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$0:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$0:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/settings/core/instrumentation/-$$Lambda$SearchResultTraceLogWriter$_9p4783wV71Yg39E802LZlMNF8c;->f$2:Landroid/content/ContentValues;

    invoke-static {v0, v1, p0}, Lcom/google/android/settings/core/instrumentation/SearchResultTraceLogWriter;->lambda$action$0(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method