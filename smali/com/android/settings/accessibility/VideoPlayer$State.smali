.class public final enum Lcom/android/settings/accessibility/VideoPlayer$State;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/accessibility/VideoPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum END:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum STOPPED:Lcom/android/settings/accessibility/VideoPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 139
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 141
    new-instance v1, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v3, "PREPARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 143
    new-instance v3, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 145
    new-instance v5, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settings/accessibility/VideoPlayer$State;->PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 151
    new-instance v7, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/settings/accessibility/VideoPlayer$State;->STOPPED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 153
    new-instance v9, Lcom/android/settings/accessibility/VideoPlayer$State;

    const-string v11, "END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 137
    sput-object v11, Lcom/android/settings/accessibility/VideoPlayer$State;->$VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/VideoPlayer$State;
    .locals 1

    .line 137
    const-class v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/VideoPlayer$State;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/accessibility/VideoPlayer$State;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->$VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

    invoke-virtual {v0}, [Lcom/android/settings/accessibility/VideoPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/accessibility/VideoPlayer$State;

    return-object v0
.end method
