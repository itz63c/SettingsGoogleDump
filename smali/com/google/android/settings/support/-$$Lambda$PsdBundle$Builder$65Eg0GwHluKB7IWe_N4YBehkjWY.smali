.class public final synthetic Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;

    invoke-direct {v0}, Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;-><init>()V

    sput-object v0, Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;->INSTANCE:Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$65Eg0GwHluKB7IWe_N4YBehkjWY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-static {p1, p2}, Lcom/google/android/settings/support/PsdBundle$Builder;->lambda$addTopBatteryApps$0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method
