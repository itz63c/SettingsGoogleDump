.class public final Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PixelAtoms.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;",
        "Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIXEL_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private pixel_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1630
    new-instance v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-direct {v0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;-><init>()V

    .line 1633
    sput-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    .line 1634
    const-class v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1368
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, "com.google.pixel"

    .line 1369
    iput-object v0, p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->pixel_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;
    .locals 1

    .line 1363
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    return-object v0
.end method

.method public static newBuilder()Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;
    .locals 1

    .line 1501
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1581
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1623
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 1617
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1602
    :pswitch_2
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 1604
    const-class p1, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    monitor-enter p1

    .line 1605
    :try_start_0
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 1607
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1610
    sput-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->PARSER:Lcom/google/protobuf/Parser;

    .line 1612
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 1599
    :pswitch_3
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "pixel_"

    aput-object p2, p0, p1

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0008\u0000"

    .line 1595
    sget-object p2, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->DEFAULT_INSTANCE:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1586
    :pswitch_5
    new-instance p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;

    invoke-direct {p0, p2}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;-><init>(Landroid/hardware/google/pixel/vendor/PixelAtoms$1;)V

    return-object p0

    .line 1583
    :pswitch_6
    new-instance p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-direct {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPixel()Ljava/lang/String;
    .locals 0

    .line 1386
    iget-object p0, p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->pixel_:Ljava/lang/String;

    return-object p0
.end method
