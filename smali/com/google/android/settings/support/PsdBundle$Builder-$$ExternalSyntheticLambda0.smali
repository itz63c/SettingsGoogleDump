.class public final synthetic Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/settings/support/PsdBundle$Builder-$$ExternalSyntheticLambda0;

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

    invoke-static {p1, p2}, Lcom/google/android/settings/support/PsdBundle$Builder;->$r8$lambda$65Eg0GwHluKB7IWe_N4YBehkjWY(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method
