.class public final synthetic Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;

    invoke-direct {v0}, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;-><init>()V

    sput-object v0, Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;->INSTANCE:Lcom/google/android/wifitrackerlib/-$$Lambda$GoogleWifiPickerTracker$Eyp6gPAYKm8cV9ecuZbco8t4auc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/android/wifitrackerlib/GoogleWifiPickerTracker;->lambda$updateWsuWifiEntryScans$3(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
